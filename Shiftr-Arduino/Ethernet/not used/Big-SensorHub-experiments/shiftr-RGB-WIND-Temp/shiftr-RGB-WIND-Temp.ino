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


#include <Ethernet.h>
#include <MQTT.h>
#include <SPI.h> //from DhcpAddressPrinter

#include <Wire.h>
#include "Adafruit_TCS34725.h" //RGB colour sensor
#include <Adafruit_Sensor.h>  // BME - Temp/pressure sensor
#include <Adafruit_BME280.h> // BME - Temp/pressure sensor

#define BME_SCK 13 // BME - Temp/pressure sensor
#define BME_MISO 12 // BME - Temp/pressure sensor
#define BME_MOSI 11 // BME - Temp/pressure sensor
#define BME_CS 10 // BME - Temp/pressure sensor

#define SEALEVELPRESSURE_HPA (1013.25)

// from DhcpAddressPrinter 
byte mac[] = {
    0x00, 0xAA, 0xBB, 0xCC, 0xDE, 0x03 /*change mac address so it is different from the programme 
    on send arduino */
  };
// end from DhcpAddressPrinter

EthernetClient net;
MQTTClient client;
Adafruit_BME280 bme; // I2C - BME - Temp/pressure sensor

Adafruit_TCS34725 tcs = Adafruit_TCS34725(TCS34725_INTEGRATIONTIME_700MS, TCS34725_GAIN_1X); //RGB colour sensor

int sensorPin = A0;    // select the input pin for the wind sensor
int windsensorValue = 0;  // variable to store the value coming from the wind sensor

unsigned long fastDelayTime = 1000;
unsigned long slowDelayTime = 10000;
unsigned long previousFastMillis = 0;
unsigned long previousSlowMillis = 0;
//int moistureReading = 0;   // This is for the received sensor value sent by shiftr
//int lightReading = 0;   // This is for the received sensor value sent by shiftr
//int temperatureReading = 0;   // This is for the received sensor value sent by shiftr

int moistureThreshold = 470;  // This holds the threshold for the soil - change here and reupload
int valveTime = 4000;  // The amount of time between each time the valve is actuated (seconds)

void setup() {
  Serial.begin(9600);

    tcs.begin(); //RGB colour sensor
    bme.begin();  //Pressure/Temp sensor

// from DhcpAddressPrinter           
     // start the Ethernet connection:
//                    Serial.println("Initialize Ethernet with DHCP:");
      if (Ethernet.begin(mac) == 0) {
//                      Serial.println("Failed to configure Ethernet using DHCP");
        if (Ethernet.hardwareStatus() == EthernetNoHardware) {
//                        Serial.println("Ethernet shield was not found.  Sorry, can't run without hardware. :(");
        } else if (Ethernet.linkStatus() == LinkOFF) {
//                        Serial.println("Ethernet cable is not connected.");
        }
        // no point in carrying on, so do nothing forevermore:
       while (true) {
          delay(1);
        }
      }
      // print your local IP address:
//                    Serial.print("My IP address: ");
//                    Serial.println(Ethernet.localIP());
// end from DhcpAddressPrinter

    
    // Note: Local domain names (e.g. "Computer.local" on OSX) are not supported by Arduino.
    // You need to set the IP address directly.
    client.begin("broker.shiftr.io", net);
    //client.onMessage(messageReceived);  // call this function (message received) whenever there is a message
    connect();

}

void loop() {
  client.loop();

  if (!client.connected()) {
    connect();
  }


  // This sends the threshold value to the wifi module  
    unsigned long currentMillis = millis();
    if (currentMillis - previousFastMillis >= fastDelayTime) {
        previousFastMillis = currentMillis;
        // This runs every fastDelayTime ms
        // Process fast sensors    
        // read the value from the wind sensor:
        windsensorValue = analogRead(sensorPin);
        client.publish("/Wind", String(windsensorValue));
        //Serial.print("Wind value: ");Serial.println(windsensorValue);

        if (currentMillis - previousSlowMillis >= slowDelayTime) {
          previousSlowMillis = currentMillis;

        //this converts the RGB colour sensor data 
        /*float red, green, blue; //taken from the other sketch to transform RGB values
        uint16_t r, g, b, c, colorTemp, lux;
        tcs.getRawData(&r, &g, &b, &c);
        tcs.getRGB(&red, &green, &blue);//taken from the other sketch to transform RGB values
        colorTemp = tcs.calculateColorTemperature(r, g, b);
        lux = tcs.calculateLux(r, g, b);
    
        // print sensor values only when necessary - else look at shiftr
        //RBG sensor
        client.publish("/colourTemp", String(colorTemp));
        //Serial.print("Color Temp: "); Serial.print(colorTemp, DEC); Serial.print(" K - ");
        client.publish("/Lux", String(lux));*/
        
        //Serial.print("Lux: "); Serial.print(lux, DEC); Serial.println("");
        //BME sensor - Humidity/temp/pressure
        client.publish("/Temp-degree", String(int(bme.readTemperature())));
        //Serial.print("Temp-degree: "); Serial.print(bme.readTemperature()); Serial.println("");
        client.publish("/Pressure-hPa", String(int(bme.readPressure()/100)));
        //Serial.print("Pressure-hPa: "); Serial.print(intbme.readPressure()); Serial.println("");
        client.publish("/Alt", String(int(bme.readAltitude(SEALEVELPRESSURE_HPA))));
        //Serial.print("Alt: "); Serial.print(bme.readAltitude(SEALEVELPRESSURE_HPA)); Serial.println("");
        client.publish("/Humid", String(int(bme.readHumidity())));
        //Serial.print("Humid: "); Serial.print(bme.readHumidity()); Serial.println("");


    /* Make processing sketch for this function
    client.publish("/NewThreshold", String(moistureThreshold)); // sending to shiftr client.publish("NewThreshold", String(moistureThreshold)); // sending to shiftr
    //Serial.print("moistureThreshold value : "); Serial.println(moistureThreshold);
    client.publish("/ValveTime", String(valveTime));
    //Serial.print("valveTime value : "); Serial.println(valveTime);
     */
  }
// from DhcpAddressPrinter 
        switch (Ethernet.maintain()) {
        /*case 1:
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
          break;*/
                    
        }
// end from DhcpAddressPrinter
    }
}


void connect() {
  //Serial.print("connecting...");
  while (!client.connect("Foresta-InclusiveRECEIVE3SENSORS", "83aa4496", "02ffd19115bcd0ed")) {
    //Serial.print(".");
    delay(1000);
  }

  Serial.println("\nconnected!");  //  '/n' means start at new line

//This is if I want to subscribe to anything in Shiftr - make sure to add messageReceived below and call it above.
  //client.subscribe("/WetSoil");  //     '/' all names start with a slash
  //client.unsubscribe("/WetSoil");
  //client.subscribe("/Light");  //     '/' all names start with a slash
  //client.subscribe("/Temperature");  //     '/' all names start with a slash
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
