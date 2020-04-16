/***************************************************************************
  This is a sketch that connects the 
  1) BME280 humidity, temperature & pressure sensor - https://learn.adafruit.com/adafruit-bme280-humidity-barometric-pressure-temperature-sensor-breakout/arduino-test
  2) CCS811 Gas Sensor - Co2 and VOC - https://learn.adafruit.com/adafruit-ccs811-air-quality-sensor?view=all
  3) TCL2561 - lux sensor - https://learn.adafruit.com/tsl2561/arduino-code
  4) PM2.5 Air Quality Sensor - https://learn.adafruit.com/pm25-air-quality-sensor/arduino-code
  5) Anemometer wind Sensor - https://www.adafruit.com/product/1733
  6) https://www.vegetronix.com/Products/THERM200/
  7) https://www.vegetronix.com/Products/VH400/
  Sensors 1, 2 and 3 use I2C or SPI to communicate, 2 or 4 pins are required
  to interface. The device's I2C address is either 0x76 or 0x77 and 0x5a.

SDA-> Pin 4A on Arduino Uno
SCL -> Pin 5A on Arduino Uno

Notes on wiring:
BME - SCK pin to the I2C clock SCL  and SDI pin to the I2C data SDA pin 
CCS811 Gas Sensor - Co2 and VOC - must also ground WAKE pin
TCS34725 - RGB colour sensor - To turn off LED on Board ground LED pin
PM2.5 - Ground, Positive, Pin 2 on Arduino
Anemometer wind sensor -- red to + of power source - 12vdc is fine.  
    Black is to ground on power source and ground on microcontroller.
    Blue goes to A0

 ***************************************************************************/


#include <Ethernet.h>
#include <MQTT.h>
#include <SPI.h> //from DhcpAddressPrinter

#include <Wire.h>
#include <Adafruit_TSL2561_U.h> // LUX
#include <Adafruit_Sensor.h>  // BME - Temp/pressure sensor
#include <Adafruit_BME280.h> // BME - Temp/pressure sensor
#include "Adafruit_CCS811.h" //CCS811 code - Co2 and TVOC

//https://learn.adafruit.com/pm25-air-quality-sensor/arduino-code
//#include <SoftwareSerial.h>
//SoftwareSerial pmsSerial(10, 11);  // on a mega - (10-RX, 11=TX) on an uno (2=RX,3=TX)

#define BME_SCK 13 // BME - Temp/pressure sensor
#define BME_MISO 12 // BME - Temp/pressure sensor
#define BME_MOSI 11 // BME - Temp/pressure sensor
#define BME_CS 10 // BME - Temp/pressure sensor

#define SEALEVELPRESSURE_HPA (1013.25)

// from DhcpAddressPrinter 
byte mac[] = {
    0x00, 0xAA, 0xBB, 0xCC, 0xDE, 0x04 /*change mac address so it is different from the programme 
    on send arduino */
  };
// end from DhcpAddressPrinter

EthernetClient net;
MQTTClient client;
Adafruit_BME280 bme; // I2C - BME - Temp/pressure sensor
Adafruit_TSL2561_Unified tsl = Adafruit_TSL2561_Unified(TSL2561_ADDR_FLOAT, 12345);// LUX - should give a unique name -default is 12345
Adafruit_CCS811 ccs; //CCS811 code - Co2 and TVOC

struct pms5003data { //particulate
  uint16_t framelen;
  uint16_t pm10_standard, pm25_standard, pm100_standard;
  uint16_t pm10_env, pm25_env, pm100_env;
  uint16_t particles_03um, particles_05um, particles_10um, particles_25um, particles_50um, particles_100um;
  uint16_t unused;
  uint16_t checksum;
}; 

struct pms5003data data ={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}; // sets the values to 0 so that the first upload is not jiberish

unsigned long fastDelayTime = 500;
unsigned long slowDelayTime = 10000;
unsigned long previousFastMillis = 0;
unsigned long previousSlowMillis = 0;
int sensorPin = A0;    // sdefines input pin for the wind sensor
int windsensorValue = 0;  // variable to store the value coming from the wind sensor
int moisturePin = A1; // this defines the pin A0 as the moisture sensor pin
int moistureReading;  // this holds the reading from the soil moisture sensor
int temperaturePin = A2; // defines the pin A2 as the temperature sensor pin
int temperatureReading;  // this holds the reading from the soil temperature sensor

void setup() {
  Serial.begin(115200); // this is now faster for particulate sensor

        // sensor baud rate is 9600 //PM2.5
        //pmsSerial.begin(9600);
        Serial1.begin(9600); // for mega in pin 19
        
    tsl.begin(); //Lux sensor
    configureSensor();
    bme.begin();  //Pressure/Temp sensor
    ccs.begin(); // gas sensor

// from DhcpAddressPrinter           
     // start the Ethernet connection:
    Serial.println("Initialize Ethernet with DHCP:");
      if (Ethernet.begin(mac) == 0) {
      Serial.println("Failed to configure Ethernet using DHCP");
        if (Ethernet.hardwareStatus() == EthernetNoHardware) {
      Serial.println("Ethernet shield was not found.  Sorry, can't run without hardware. :(");
        } else if (Ethernet.linkStatus() == LinkOFF) {
      Serial.println("Ethernet cable is not connected.");
        }
       // no point in carrying on, so do nothing forevermore:
       while (true) {
          delay(1);
        }
      }      
    //print your local IP address:
    Serial.print("My IP address: ");
    Serial.println(Ethernet.localIP());
    //end from DhcpAddressPrinter
    
    client.begin("broker.shiftr.io", net);
    //client.onMessage(messageReceived);  // call this function (message received) whenever there is a message
    connect();

}

void loop() {
  client.loop();

  if (!client.connected()) {
    connect();
    
  }
  // This sends the sensor data that needs to be sent quickly to shiftr - ie//wind
    unsigned long currentMillis = millis();
    if (currentMillis - previousFastMillis >= fastDelayTime) {
        previousFastMillis = currentMillis;
        // This runs every fastDelayTime ms
        // Process fast sensors    
        // read the value from the wind sensor:
        windsensorValue = analogRead(sensorPin);
        client.publish("/Wind", String(windsensorValue));
        Serial.print("Wind value: ");Serial.println(windsensorValue);

        //LUX sensor
        //print sensor values only when necessary - else look at shiftr
         /* Get a new sensor event */ 
        sensors_event_t event; //LUX sensor
        tsl.getEvent(&event);
        if (event.light){
          client.publish("/Lux", String(event.light));
          Serial.print("lux:"); Serial.println(event.light); 
        }

          //Particulate
          if (readPMSdata(&Serial1)) { //if (readPMSdata(&pmsSerial)) - if using software serial
            // reading data was successful!
            Serial.print("Particles > 0.3um / 0.1L air:"); Serial.println(data.particles_03um);
            Serial.print("Particles > 0.5um / 0.1L air:"); Serial.println(data.particles_05um);
            Serial.print("Particles > 1.0um / 0.1L air:"); Serial.println(data.particles_10um);
            Serial.print("Particles > 2.5um / 0.1L air:"); Serial.println(data.particles_25um);
            Serial.print("Particles > 5.0um / 0.1L air:"); Serial.println(data.particles_50um);
            Serial.print("Particles > 10.0 um / 0.1L air:"); Serial.println(data.particles_100um);
            Serial.println("---------------------------------------");
          } 

  // This sends the sensors that change less frequently to shiftr
        if (currentMillis - previousSlowMillis >= slowDelayTime) {
          previousSlowMillis = currentMillis;

        moistureReading = analogRead(moisturePin);
        client.publish("/WetSoil1", String(moistureReading)); // sending to shiftr 
        temperatureReading = analogRead(temperaturePin); 
        temperatureReading = map(temperatureReading, 0, 625, -40, 85);
        client.publish("/Temperature1", String(temperatureReading)); // sending to shiftr
        
        //Gas/VOC sensor
        if(ccs.available()){
          if(!ccs.readData()){         
          client.publish("/C02", String(ccs.geteCO2()));
          Serial.print("C02: "); Serial.print(ccs.geteCO2()); Serial.println("");
          client.publish("/VOC", String(ccs.getTVOC()));
          Serial.print("VOC: "); Serial.print(ccs.getTVOC()); Serial.println("");
          }
        }    
        
        //BME sensor - Humidity/temp/pressure
        client.publish("/Temp-degree", String(int(bme.readTemperature())));
        Serial.print("Temp-degree: "); Serial.print(bme.readTemperature()); Serial.println("");
        client.publish("/Pressure-hPa", String(int(bme.readPressure()/100)));
        Serial.print("Pressure-hPa: "); Serial.print(bme.readPressure()); Serial.println("");
        client.publish("/Alt", String(int(bme.readAltitude(SEALEVELPRESSURE_HPA))));
        Serial.print("Alt: "); Serial.print(bme.readAltitude(SEALEVELPRESSURE_HPA)); Serial.println("");
        client.publish("/Humid", String(int(bme.readHumidity())));
        Serial.print("Humid: "); Serial.print(bme.readHumidity()); Serial.println("");

        //Particulate
            client.publish("/Particles.3", String(data.particles_03um)); 
            client.publish("/Particles.5", String(data.particles_05um));
            client.publish("/Particles1", String(data.particles_10um));
            client.publish("/Particles2.5", String(data.particles_25um));
            client.publish("/Particles5", String(data.particles_50um));
            client.publish("/Particles10", String(data.particles_100um));          
    }
  DhcpAddress();
  } 
}

///----------------------particle
boolean readPMSdata(Stream *s) {
  // Read a byte at a time until we get to the special '0x42' start-byte
  while (s->available() && s->peek() != 0x42) {
    s->read();
  }

  if (! s->available()) {
    Serial.println("no data");
    return false;
  }
  
  // Now read all 32 bytes
  if (s->available() < 32) {
    Serial.println("< 32 bytes available");
    return false;
  }
    
  uint8_t buffer[32];    
  uint16_t sum = 0;
  s->readBytes(buffer, 32);

  // get checksum ready
  for (uint8_t i=0; i<30; i++) {
    sum += buffer[i];
  }

  /* debugging
  for (uint8_t i=2; i<32; i++) {
    Serial.print("0x"); Serial.print(buffer[i], HEX); Serial.print(", ");
  }
  Serial.println();
  */
  
  // The data comes in endian'd, this solves it so it works on all platforms
  uint16_t buffer_u16[15];
  for (uint8_t i=0; i<15; i++) {
    buffer_u16[i] = buffer[2 + i*2 + 1];
    buffer_u16[i] += (buffer[2 + i*2] << 8);
  }

  // put it into a nice struct :)
  memcpy((void *)&data, (void *)buffer_u16, 30);

  if (sum != data.checksum) {
    Serial.println("Checksum failure");
    return false;
  }
  // success!
  return true;
}

void connect() {
  Serial.print("connecting...");
  while (!client.connect("Foresta-InclusiveHUB-wifiTOethernet", "dd34246a", "506f8bb540dd3fbb")) {
    Serial.print(".");
    delay(1000);
  }

  Serial.println("\nconnected!");  //  '/n' means start at new line

  //This is if I want to subscribe to anything in Shiftr - make sure to add messageReceived below and call it above.
  //client.subscribe("/WetSoil");  //     '/' all names start with a slash
  //client.unsubscribe("/WetSoil");
  //client.subscribe("/Light");  //     '/' all names start with a slash
  //client.subscribe("/Temperature");  //     '/' all names start with a slash
}

void DhcpAddress(){

  // from DhcpAddressPrinter 
  switch (Ethernet.maintain()) {
  case 1:
    //renewed fail
    Serial.println("Error: renewed fail");
    break;

  case 2:
    //renewed success
    Serial.println("Renewed success");
    //print your local IP address:
    Serial.print("My IP address: ");
    Serial.println(Ethernet.localIP());
    break;

  case 3:
    //rebind fail
    Serial.println("Error: rebind fail");
    break;

  case 4:
    //rebind success
    Serial.println("Rebind success");
    //print your local IP address:
    Serial.print("My IP address: ");
    Serial.println(Ethernet.localIP());
    break;

  default:
    //nothing happened
    break;
   // end from DhcpAddressPrinter           
  }
}

void configureSensor(void)
{
  tsl.enableAutoRange(true);            /* Auto-gain ... switches automatically between 1x and 16x */
  tsl.setIntegrationTime(TSL2561_INTEGRATIONTIME_13MS);      /* fast but low resolution */

}
// Add this if I want to subscribe to something
/*(void messageReceived(String &topic, String &payload) {   // string is a type of variable - a series of characters (topic= /WetSoil  payload= the value
  if (topic== "moistureReading"){
   moistureReading = payload.toInt(); // this translates the payload string into and integer, which is now stored in moistureReading
  }
  if (topic== "lightReading"){
   lightReading = payload.toInt(); // this translates the payload string into and integer, which is now stored in moistureReading
  } 
  if (topic== "temperatureReading"){
   temperatureReading = payload.toInt(); // this translates the payload string into and integer, which is now stored in moistureReading
  }
  Serial.println("incoming: " + topic + " - " + payload);  // see serial - this is how the information is displayed
}*/
