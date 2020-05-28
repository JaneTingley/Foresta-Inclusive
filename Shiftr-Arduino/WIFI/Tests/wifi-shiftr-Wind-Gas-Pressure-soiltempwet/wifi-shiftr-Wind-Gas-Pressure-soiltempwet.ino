/***************************************************************************
  This is a sketch that connects the 

1)NO RGB _ TCS34725 - RGB colour sensor - Colour temp, LUX - https://learn.adafruit.com/adafruit-color-sensors/arduino-code
2)Anemometer wind Sensor - https://www.adafruit.com/product/1733
3)CCS811 Gas Sensor - Co2 and VOC - https://learn.adafruit.com/adafruit-ccs811-air-quality-sensor?view=all
4) BME280 humidity, temperature & pressure sensor - https://learn.adafruit.com/adafruit-bme280-humidity-barometric-pressure-temperature-sensor-breakout/arduino-test
5) VH400 Soil Moisture - https://www.vegetronix.com/Products/VH400/
6) THERM200- Soil Temp - https://www.vegetronix.com/Products/THERM200/ 

Sensors 1, 2 and 3 use I2C or SPI to communicate, 2 or 4 pins are required
to interface. The device's I2C address is either 0x76 or 0x77 and 0x5a.

SDA-> Pin 4A on Arduino Uno
SCL -> Pin 5A on Arduino Uno

Notes on wiring:
1)TCS34725 - RGB colour sensor - To turn off LED on Board ground LED pin
2)Anemometer wind sensor -- red to + of power source - 12vdc is fine.  
    Black is to ground on power source and ground on microcontroller.
    Blue goes to A0
3)CCS811 Gas Sensor - Co2 and VOC - must also ground WAKE pin

 ***************************************************************************/

#include <SPI.h>
#include <WiFiNINA.h>
#include <utility/wifi_drv.h>
#include <Adafruit_MQTT.h>
#include <Adafruit_MQTT_Client.h>

#include "arduino_secrets.h" 

// GAS/VOC
#include "Adafruit_CCS811.h"

#include <Adafruit_Sensor.h>// BME - Temp/pressure sensor
#include <Adafruit_BME280.h>// BME - Temp/pressure sensor

#define BME_SCK 13// BME - Temp/pressure sensor
#define BME_MISO 12// BME - Temp/pressure sensor
#define BME_MOSI 11// BME - Temp/pressure sensor
#define BME_CS 10// BME - Temp/pressure sensor

#define SEALEVELPRESSURE_HPA (1013.25)// BME - Temp/pressure sensor

WiFiClient net;

#define MQTT_SERVER "broker.shiftr.io"
#define MQTT_PORT 1883
Adafruit_MQTT_Client mqtt(&net, MQTT_SERVER, MQTT_PORT, MQTT_NAMESPACE, MQTT_USERNAME, MQTT_PASSWORD);

Adafruit_MQTT_Publish luxPub(&mqtt, "lux");                 // RGB-publish topic*********************************************
Adafruit_MQTT_Publish WindPub(&mqtt, "Wind");               // Wind-publish topic*********************************************
Adafruit_MQTT_Publish C02Pub(&mqtt, "C02");                 // GAS-publish topic*********************************************
Adafruit_MQTT_Publish VOCPub(&mqtt, "VOC");                 // GAS-publish topic*********************************************
Adafruit_MQTT_Publish TemperaturePub(&mqtt, "Temperature"); // BME-publish topic*********************************************
Adafruit_MQTT_Publish PressurePub(&mqtt, "Pressure");       // BME-publish topic*********************************************
Adafruit_MQTT_Publish AltitudePub(&mqtt, "Altitude");       // BME-publish topic*********************************************
Adafruit_MQTT_Publish HumidityPub(&mqtt, "Humidity");       // BME-publish topic*********************************************
Adafruit_MQTT_Publish moistureReadingPub(&mqtt, "moistureReading");   // publish topic*********************************************
Adafruit_MQTT_Publish soilTemperaturePub(&mqtt, "soilTemperature");   // publish topic*********************************************

char ssid[] = SECRET_SSID;   // your network SSID (name)
char pass[] = SECRET_PASS;   // your network password (use for WPA, or use as key for WEP)
int status = WL_IDLE_STATUS; // the Wifi radio's status

unsigned long lastMillis = 0;
unsigned long lastPing = 0;
const unsigned long KEEPALIVE = 60000;
uint32_t counter = 0;

Adafruit_CCS811 ccs;  //CCS811 code - Co2 and TVOC
Adafruit_BME280 bme; // I2C - BME - Temp/pressure sensor

//sensors:
int sensorPin = A0;    // defines input pin for the wind sensor
uint32_t windsensorValue = 0;  // variable to store the value coming from the wind sensor
int moisturePin = A1; // this defines the pin A1 as the moisture sensor pin
uint32_t moistureReading;  // this holds the reading from the soil moisture sensor
int temperaturePin = A2; // defines the pin A2 as the temperature sensor pin
uint32_t temperatureReading;  // this holds the reading from the soil temperature sensor

void setup() {
  
  Serial.begin(115200);

  ccs.begin(); // gas sensor
  bme.begin();  //Pressure/Temp
  
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

}

void setRGB(uint8_t r, uint8_t g, uint8_t b) {
  WiFiDrv::analogWrite(25, r);
  WiFiDrv::analogWrite(26, g);
  WiFiDrv::analogWrite(27, b);
}

void loop() {
  if (!mqtt_loop()) return;
  
  unsigned long currentTime = millis();
  if (currentTime - lastMillis > 1000) {
    lastMillis = currentTime;
    // Reads from windsensor
    windsensorValue = analogRead(sensorPin);
    WindPub.publish(windsensorValue);  // this what I add *****************************************************
    Serial.print("Wind: "); Serial.println(windsensorValue);
   
   // Reads from soil moisture sensor
    moistureReading = analogRead(moisturePin);
    moistureReadingPub.publish(moistureReading);  // this what I add *****************************************************
    Serial.print("Soil-Moisture: "); Serial.println(moistureReading);
   
   // Reads from soil temp
    temperatureReading = analogRead(temperaturePin); 
    temperatureReading = map(temperatureReading, 0, 625, -40, 85);
    soilTemperaturePub.publish(temperatureReading);  // this what I add *****************************************************
    Serial.print("Soil-Temp: "); Serial.println(temperatureReading);

      //Gas/VOC sensor
    if(ccs.available()){
      if(!ccs.readData()){ 
        C02Pub.publish(uint32_t(ccs.geteCO2()));  // this what I add *****************************************************        
        Serial.print("C02: "); Serial.print(ccs.geteCO2()); Serial.println("");
        VOCPub.publish(uint32_t(ccs.getTVOC()));  // this what I add *****************************************************        
        Serial.print("VOC: "); Serial.print(ccs.getTVOC()); Serial.println("");
      }
    }

        //BME sensor - Humidity/temp/pressure
    TemperaturePub.publish(uint32_t(bme.readTemperature()));  // this what I add ***************************************************** 
    Serial.print("Temp-degree: "); Serial.print(bme.readTemperature()); Serial.println("");
    PressurePub.publish(uint32_t(bme.readPressure()/100));  // this what I add ***************************************************** 
    Serial.print("Pressure-hPa: "); Serial.print(bme.readPressure()); Serial.println("");
    AltitudePub.publish(uint32_t(bme.readAltitude(SEALEVELPRESSURE_HPA)));  // this what I add ***************************************************** 
    Serial.print("Alt: "); Serial.print(bme.readAltitude(SEALEVELPRESSURE_HPA)); Serial.println("");
    HumidityPub.publish(uint32_t(bme.readHumidity()));  // this what I add *****************************************************
    Serial.print("Humid: "); Serial.print(bme.readHumidity()); Serial.println("");
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
// Will return true if we've got a valid MQTT connection, false otherwise.
bool mqtt_loop() {
  if (!mqtt_connect()) {
    Serial.println("Retrying in 5 sec...");
    delay(5000);
    return false;
  }
  else {
    mqtt.processPackets(100);
    return true;
  }
}

// Function to connect and reconnect as necessary to the MQTT server.
// Will return true if we've got a connection, false otherwise.
bool mqtt_connect() {
  // If WiFi client is connected
  if (mqtt.connected()) {

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
      setRGB(0, 100, 100);
      int pingResult = WiFi.ping("google.com");
      if (pingResult < 0) {
        Serial.print("google.com ping failed: "); Serial.println(pingResult);
        setRGB(255, 0, 0);
        delay(1000);
      }
      setRGB(0, 0, 0);
    }

    return true;
  }

  setRGB(100, 100, 0);
  uint8_t wifiStatus = WiFi.status();
  if (wifiStatus != WL_CONNECTED) {
    Serial.print("WiFi disconnected: "); Serial.println(wifiStatus);
    Serial.print("  reconnecting to ");
    Serial.print(ssid);
    Serial.println("...");
    wifiStatus = WiFi.begin(ssid, pass);
    Serial.print("  reconnect status: "); Serial.println(wifiStatus);
    if (wifiStatus != WL_CONNECTED) {
      setRGB(100, 0, 0);
      return false; // Reconnect unsuccessful
    }
  }

  Serial.print("MQTT: Connecting to ");
  Serial.print(MQTT_SERVER); Serial.print(":"); Serial.print(MQTT_PORT); Serial.print("...");

  int8_t mqttStatus = mqtt.connect();
  if (mqttStatus != 0) {
    setRGB(100, 0, 0);
    Serial.print("  MQTT connection status: ");
    Serial.println(mqtt.connectErrorString(mqttStatus));
    mqtt.disconnect();
    return false;
  }
  Serial.println("  MQTT connected");
  setRGB(0, 0, 0);
  return true;
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
