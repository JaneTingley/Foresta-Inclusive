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

#include <SPI.h>
#include <WiFiNINA.h>
#include <utility/wifi_drv.h>
#include <Adafruit_MQTT.h>
#include <Adafruit_MQTT_Client.h>

#include "arduino_secrets.h" 

#include <Wire.h>
#include "Adafruit_TCS34725.h" //RGB colour sensor
#include <Adafruit_Sensor.h>  // BME - Temp/pressure sensor
#include <Adafruit_BME280.h> // BME - Temp/pressure sensor
#include "Adafruit_CCS811.h" //CCS811 code - Co2 and TVOC

//https://learn.adafruit.com/pm25-air-quality-sensor/arduino-code
//#include <SoftwareSerial.h>
//SoftwareSerial pmsSerial(10, 11);  // on a mega - (10-RX, 11=TX) on an uno (2=RX,3=TX)

WiFiClient net;

#define BME_SCK 13 // BME - Temp/pressure sensor
#define BME_MISO 12 // BME - Temp/pressure sensor
#define BME_MOSI 11 // BME - Temp/pressure sensor
#define BME_CS 10 // BME - Temp/pressure sensor

#define SEALEVELPRESSURE_HPA (1013.25)

#define MQTT_SERVER "broker.shiftr.io"
#define MQTT_PORT 1883
Adafruit_MQTT_Client mqtt(&net, MQTT_SERVER, MQTT_PORT, MQTT_NAMESPACE, MQTT_USERNAME, MQTT_PASSWORD);

Adafruit_MQTT_Publish WindPub(&mqtt, "Wind");   // publish topic*********************************************
Adafruit_MQTT_Publish Wind1Pub(&mqtt, "Wind1");   // publish topic*********************************************
Adafruit_MQTT_Publish Wind1Pub(&mqtt, "Wind1");   // publish topic*********************************************
Adafruit_MQTT_Publish Wind1Pub(&mqtt, "Wind1");   // publish topic*********************************************
Adafruit_MQTT_Publish Wind1Pub(&mqtt, "Wind1");   // publish topic*********************************************
Adafruit_MQTT_Publish Wind1Pub(&mqtt, "Wind1");   // publish topic*********************************************
Adafruit_MQTT_Publish Wind1Pub(&mqtt, "Wind1");   // publish topic*********************************************
Adafruit_MQTT_Publish Wind1Pub(&mqtt, "Wind1");   // publish topic*********************************************

Adafruit_MQTT_Subscribe LightSub(&mqtt, "Light"); // subscribe to each topic***********************************

Adafruit_BME280 bme; // I2C - BME - Temp/pressure sensor
Adafruit_TCS34725 tcs = Adafruit_TCS34725(TCS34725_INTEGRATIONTIME_700MS, TCS34725_GAIN_1X); //RGB colour sensor
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


char ssid[] = SECRET_SSID;   // your network SSID (name)
char pass[] = SECRET_PASS;   // your network password (use for WPA, or use as key for WEP)
int status = WL_IDLE_STATUS; // the Wifi radio's status

unsigned long fastDelayTime = 500;
unsigned long slowDelayTime = 10000;
unsigned long previousFastMillis = 0;
unsigned long previousSlowMillis = 0;
unsigned long lastPing = 0;
const unsigned long KEEPALIVE = 60000;


//sensors:
int sensorPin = A2;    // sdefines input pin for the wind sensor
uint32_t windsensorValue = 0;  // variable to store the value coming from the wind sensor
int moisturePin = A3; // this defines the pin A0 as the moisture sensor pin
int moistureReading;  // this holds the reading from the soil moisture sensor
int temperaturePin = A4; // defines the pin A2 as the temperature sensor pin
int temperatureReading;  // this holds the reading from the soil temperature sensor

void setup() {
  
  Serial.begin(115200);

          // sensor baud rate is 9600 //PM2.5
        //pmsSerial.begin(9600);
        Serial1.begin(9600); // for mega in pin 19
        
    tcs.begin(); //RGB colour sensor
    bme.begin();  //Pressure/Temp 
    ccs.begin(); // gas sensor
    
  while (!Serial && millis() < 4000);
  delay(100);
  Serial.println("\nHello WifiShiftr");

  if (WiFi.status() == WL_NO_MODULE) {
    Serial.println("Communication with WiFi module failed!");
    while (true);
  }

  WiFiDrv::pinMode(25, OUTPUT);  // RED
  WiFiDrv::pinMode(26, OUTPUT);  // GREEN
  WiFiDrv::pinMode(27, OUTPUT);  // BLUE
  setRGB(100, 100, 0);

  while (status != WL_CONNECTED) {
    Serial.print("WiFi: Connecting to ");
    Serial.print(ssid);
    Serial.println("...");
    status = WiFi.begin(ssid, pass);
  }

  // you're connected now, so print out the data:
  Serial.print("   connected to ");
  Serial.println(ssid);
  printCurrentNet();
  printWifiData();
  setRGB(0, 0, 0);

  LightSub.setCallback(LightCallback); // each subscription needs a callback function *************
  mqtt.subscribe(&LightSub); // for each
}

void setRGB(uint8_t r, uint8_t g, uint8_t b) {
  WiFiDrv::analogWrite(25, r);
  WiFiDrv::analogWrite(26, g);
  WiFiDrv::analogWrite(27, b);
}

void loop() {
  mqtt_loop();

    // This sends the sensor data that needs to be sent quickly to shiftr - ie//wind
    unsigned long currentMillis = millis();
    if (currentMillis - previousFastMillis >= fastDelayTime) {
        previousFastMillis = currentMillis;
        // This runs every fastDelayTime ms
        // Process fast sensors    
        // read the value from the wind sensor:
    windsensorValue = analogRead(sensorPin);
    WindPub.publish(windsensorValue);  // this what I add *****************************************************
    Serial.print("Publish: "); Serial.println(windsensorValue);

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
  
          //this converts the RGB colour sensor data 
          float red, green, blue; //taken from the other sketch to transform RGB values
          uint16_t r, g, b, c, colorTemp, lux;
          tcs.getRawData(&r, &g, &b, &c);
          tcs.getRGB(&red, &green, &blue);//taken from the other sketch to transform RGB values
          colorTemp = tcs.calculateColorTemperature(r, g, b);
          lux = tcs.calculateLux(r, g, b);
  
          //RBG sensor
           //print sensor values only when necessary - else look at shiftr
          client.publish("/colourTemp", String(colorTemp));
          Serial.print("Color Temp: "); Serial.print(colorTemp, DEC); Serial.println(" K ");
          client.publish("/Lux", String(lux));
          Serial.print("Lux: "); Serial.println(lux, DEC);
  
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
  }
}  

void LightCallback(uint32_t Light) {  // each needs a seperate one**************************************
  setRGB(0, 100, 0);
  Serial.print("from MQTT: "); Serial.println(Light);
  delay(100);
  setRGB(0, 0, 0);
}

// Call this every loop.
// It will process incoming messagew as well as maintain the MQTT connection
void mqtt_loop() {
  if (!mqtt.connected()) {
    setRGB(100, 0, 0);
    mqtt_connect();
    setRGB(0, 0, 0);
  }
  mqtt.processPackets(100);
  unsigned long currentTime = millis();
  if (currentTime - lastPing > KEEPALIVE) {
    setRGB(0, 0, 100);
    if (mqtt.ping()) {
      lastPing = currentTime;
    }
    else {
      Serial.println("MQTT Ping failed");
      setRGB(255, 0, 0);
      delay(1000);
    }
    setRGB(0, 0, 100);
    int pingResult = WiFi.ping("google.com");
    if (pingResult < 0) {
      Serial.print("Ping failed: "); Serial.println(pingResult);
      setRGB(255, 0, 0);
      delay(1000);
    }
    setRGB(0, 0, 0);
  }
}

// Function to connect and reconnect as necessary to the MQTT server.
void mqtt_connect() {
  if (WiFi.status() != WL_CONNECTED) {
    Serial.print("WiFi: Reconnecting to ");
    Serial.print(ssid);
    Serial.println("...");
    status = WiFi.begin(ssid, pass);
  }

  // If WiFi client is connected
  if (mqtt.connected()) return;

  Serial.print("MQTT: Connecting to ");
  Serial.print(MQTT_SERVER); Serial.print(":"); Serial.print(MQTT_PORT); Serial.print("...");

  int8_t ret;
  while ((ret = mqtt.connect()) != 0) {
    Serial.println(mqtt.connectErrorString(ret));
    Serial.println("Retrying in 5 seconds...");
    mqtt.disconnect();
    delay(5000);
  }
  Serial.println("connected!");
}

void printWifiData() {
  // print your board's IP address:
  IPAddress ip = WiFi.localIP();
  Serial.print("IP Address: "); Serial.println(ip);

  // print your MAC address:
  byte mac[6];
  WiFi.macAddress(mac);
  Serial.print("MAC address: "); printMacAddress(mac);
}

void printCurrentNet() {
  // print the SSID of the network you're attached to:
  Serial.print("   SSID: "); Serial.println(WiFi.SSID());

  // print the MAC address of the router you're attached to:
  byte bssid[6];
  WiFi.BSSID(bssid);
  Serial.print("   BSSID: "); printMacAddress(bssid);

  // print the received signal strength:
  long rssi = WiFi.RSSI();
  Serial.print("   signal strength (RSSI):"); Serial.println(rssi);

  // print the encryption type:
  byte encryption = WiFi.encryptionType();
  Serial.print("   Encryption Type:"); Serial.println(encryption, HEX);
  Serial.println();
}

void printMacAddress(byte mac[]) {
  for (int i = 5; i >= 0; i--) {
    if (mac[i] < 16) {
      Serial.print("0");
    }
    Serial.print(mac[i], HEX);
    if (i > 0) {
      Serial.print(":");
    }
  }
  Serial.println();
}
