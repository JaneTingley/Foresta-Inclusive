/***************************************************************************
  This is a sketch that connects the 
  1) BME280 humidity, temperature & pressure sensor - https://learn.adafruit.com/adafruit-bme280-humidity-barometric-pressure-temperature-sensor-breakout/arduino-test
  2) CCS811 Gas Sensor - Co2 and VOC - https://learn.adafruit.com/adafruit-ccs811-air-quality-sensor?view=all
  3) TCS34725 - RGB colour sensor - Colour temp, LUX - https://learn.adafruit.com/adafruit-color-sensors/arduino-code
  4) PM2.5 Air Quality Sensor - https://learn.adafruit.com/pm25-air-quality-sensor/arduino-code
  5) Anemometer wind Sensor - https://www.adafruit.com/product/1733

  Sensors 1, 2 and 3 use I2C or SPI to communicate, 2 or 4 pins are required
  to interface. The device's I2C address is either 0x76 or 0x77 and 0x5a.

SDA-> Pin 4A on Arduino Uno
SCL -> Pin 5A on Arduino Uno

Notes on wiring:
CCS811 Gas Sensor - Co2 and VOC - must also ground WAKE pin
TCS34725 - RGB colour sensor - To turn off LED on Board ground LED pin
PM2.5 - Ground, Positive, Pin 2 on Arduino
Anemometer wind sensor -- red to + of power source - 12vdc is fine.  
    Black is to ground on power source and ground on microcontroller.
    Blue goes to A0

 ***************************************************************************/

#include <Wire.h>
#include <SPI.h>
#include <Adafruit_Sensor.h>
#include <Adafruit_BME280.h> // Altitude/Temp/Pressure/Humidity
#include "Adafruit_TCS34725.h" // RGB code - Colour temp and LUX
#include "Adafruit_CCS811.h" //CCS811 code - Co2 and TVOC

//https://learn.adafruit.com/pm25-air-quality-sensor/arduino-code
#include <SoftwareSerial.h>
SoftwareSerial pmsSerial(2, 3);

#include <Ethernet.h> // ethernet
#include <MQTT.h> . // mqtt to shiftr
#include <SPI.h> //from DhcpAddressPrinter

    // from DhcpAddressPrinter 
                byte mac[] = {
                  0x00, 0xAA, 0xBB, 0xCC, 0xDE, 0x03 /*change mac address so it is different from the programme 
                  on send arduino */
                };
    // end from DhcpAddressPrinter

#define BME_SCK 13
#define BME_MISO 12
#define BME_MOSI 11
#define BME_CS 10

#define SEALEVELPRESSURE_HPA (1013.25)

Adafruit_CCS811 ccs; // gas sensor
Adafruit_BME280 bme; // I2C

/* Initialise with specific int time and gain values */
Adafruit_TCS34725 tcs = Adafruit_TCS34725(TCS34725_INTEGRATIONTIME_700MS, TCS34725_GAIN_1X);

EthernetClient net;  // ethernet 
MQTTClient client;   // MQTT - to shiftr

struct pms5003data { //particulate
  uint16_t framelen;
  uint16_t pm10_standard, pm25_standard, pm100_standard;
  uint16_t pm10_env, pm25_env, pm100_env;
  uint16_t particles_03um, particles_05um, particles_10um, particles_25um, particles_50um, particles_100um;
  uint16_t unused;
  uint16_t checksum;
}; 

struct pms5003data data;

unsigned long fastDelayTime = 100;
unsigned long slowDelayTime = 10000;
unsigned long previousFastMillis = 0;
unsigned long previousSlowMillis = 0;
int sensorPin = A0;    // select the input pin for the potentiometer
int windsensorValue = 0;  // variable to store the value coming from the wind sensor

unsigned long lastMillis = 0;
int moistureReading = 0;   // This is for the received sensor value sent by shiftr
int lightReading = 0;   // This is for the received sensor value sent by shiftr
int temperatureReading = 0;   // This is for the received sensor value sent by shiftr

int moistureThreshold = 470;  // This holds the threshold for the soil - change here and reupload
int valveTime = 4000;  // The amount of time between each time the valve is actuated (seconds)

void setup() {
    Serial.begin(115200);
    
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
                    // print your local IP address:
                    Serial.print("My IP address: ");
                    Serial.println(Ethernet.localIP());
        // end from DhcpAddressPrinter*/

        
        // sensor baud rate is 9600 //PM2.5
        pmsSerial.begin(9600);

    tcs.begin(); //RGB colour sensor
    ccs.begin(); //Gas sensor
    bme.begin();  //Pressure/Temp sensor

    // Note: Local domain names (e.g. "Computer.local" on OSX) are not supported by Arduino.
    // You need to set the IP address directly.
    client.begin("broker.shiftr.io", net);
    //client.onMessage(messageReceived);  // call this function (message received) whenever there is a message
    //client.onMessage(messageReceived1);  // call this function (message received) whenever there is a message
    //client.onMessage(messageReceived2);  // call this function (message received) whenever there is a message
  
    connect();

}

void connect() {
  //Serial.print("connecting...");
  while (!client.connect("Foresta-InclusiveRECEIVE3SENSORS", "83aa4496", "02ffd19115bcd0ed")) {
    //Serial.print(".");
    delay(1000);
  }

  Serial.println("\nconnected!");  //  '/n' means start at new line

  client.subscribe("/WetSoil");  //     '/' all names start with a slash
  //client.unsubscribe("/WetSoil");
  client.subscribe("/Light");  //     '/' all names start with a slash
  client.subscribe("/Temperature");  //     '/' all names start with a slash
}

void loop() { 

   client.loop();

    if (!client.connected()) {
    connect();
    }

    
    unsigned long currentMillis = millis();
    if (currentMillis - previousFastMillis >= fastDelayTime) {
        previousFastMillis = currentMillis;
        // This runs every fastDelayTime ms
        // Process fast sensors    
        // read the value from the wind sensor:
        windsensorValue = analogRead(sensorPin);
        //Serial.print("Wind: ");Serial.println(sensorValue);

        if (currentMillis - previousSlowMillis >= slowDelayTime) {
          previousSlowMillis = currentMillis;
          // This runs every slowDelayTime ms
          // Process slow sensors
          printValuesVOC();
          //printValuesBME();
         // printValuesRGB();
  
          if (readPMSdata(&pmsSerial)) {
            // reading data was successful!
            /*Serial.println();
            Serial.println("---------------------------------------");
            Serial.print("Particles > 0.3um / 0.1L air:"); Serial.println(data.particles_03um);
            Serial.print("Particles > 0.5um / 0.1L air:"); Serial.println(data.particles_05um);
            Serial.print("Particles > 1.0um / 0.1L air:"); Serial.println(data.particles_10um);
            Serial.print("Particles > 2.5um / 0.1L air:"); Serial.println(data.particles_25um);
            Serial.print("Particles > 5.0um / 0.1L air:"); Serial.println(data.particles_50um);
            Serial.print("Particles > 10.0 um / 0.1L air:"); Serial.println(data.particles_100um);
            Serial.println("---------------------------------------");*/
          }
        }        
    }

      // This sends the threshold value to the wifi module  
    if (millis() - lastMillis > 1000) {
      lastMillis = millis();
      client.publish("/NewThreshold", String(moistureThreshold)); // sending to shiftr client.publish("NewThreshold", String(moistureThreshold)); // sending to shiftr
      //Serial.print("moistureThreshold value : ");
      //Serial.println(moistureThreshold);
      client.publish("/ValveTime", String(valveTime));
      //Serial.print("valveTime value : ");
      //Serial.println(valveTime);
      client.publish("/Wind", String(windsensorValue));
    }
    delay(50);

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
                          
                      }
      // end from DhcpAddressPrinter

}

///----------------------particle
boolean readPMSdata(Stream *s) {
  // Read a byte at a time until we get to the special '0x42' start-byte
  while (s->available() && s->peek() != 0x42) {
    s->read();
  }

  if (! s->available()) {
    //Serial.println("no data");
    return false;
  }
  
  // Now read all 32 bytes
  if (s->available() < 32) {
    //Serial.println("< 32 bytes available");
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
    //Serial.println("Checksum failure");
    return false;
  }
  // success!
  return true;
}

void printValuesVOC(){
  //---- For Gas and VOC - CCS811
    //Serial.println(" ");
      if(ccs.available()){
      if(!ccs.readData()){
      //Serial.print("CO2: "); Serial.print(ccs.geteCO2()); Serial.println("ppm");
      //Serial.print("TVOC: "); Serial.println(ccs.getTVOC());
    }
  }//-------  
}

void printValuesRGB(){
  //---RGB code
      uint16_t r, g, b, c, colorTemp, lux;  // unsigned 16 bit integer to hold all values
      tcs.getRawData(&r, &g, &b, &c); // This gets the raw data (not using the RGB colour values converter)
  
      colorTemp = tcs.calculateColorTemperature(r, g, b);
      lux = tcs.calculateLux(r, g, b);
      //Serial.print("Color Temp: "); Serial.print(colorTemp, DEC); Serial.println(" K ");
      //Serial.print("Lux: "); Serial.println(lux, DEC);//-----
}

void printValuesBME() { // prints the values for the BME280
    //Serial.print("Temperature = "); Serial.println(bme.readTemperature()); //Serial.println(" *C");
    //Serial.print("Pressure = "); Serial.println(bme.readPressure() / 100.0F);//Serial.println(" hPa");
    //Serial.print("Approx. Altitude = "); Serial.println(bme.readAltitude(SEALEVELPRESSURE_HPA)); //Serial.println(" m");
    //Serial.print("Humidity = "); Serial.println(bme.readHumidity()); //Serial.println(" %");
    //Serial.println();  
}

void messageReceived(String &topic, String &payload) {   // string is a type of variable - a series of characters (topic= /WetSoil  payload= the value
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

}
