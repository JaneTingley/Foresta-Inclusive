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

WiFiClient net;

#define MQTT_SERVER "broker.shiftr.io"
#define MQTT_PORT 1883
Adafruit_MQTT_Client mqtt(&net, MQTT_SERVER, MQTT_PORT, MQTT_NAMESPACE, MQTT_USERNAME, MQTT_PASSWORD);

Adafruit_MQTT_Publish colorTempPub(&mqtt, "colorTemp");   // publish topic*********************************************
Adafruit_MQTT_Publish luxPub(&mqtt, "lux");               // publish topic*********************************************

/*Adafruit_MQTT_Publish WindPub(&mqtt, "Wind");   // publish topic*********************************************
Adafruit_MQTT_Publish moistureReadingPub(&mqtt, "moistureReading");   // publish topic*********************************************
Adafruit_MQTT_Publish soilTemperaturePub(&mqtt, "soilTemperature");   // publish topic*********************************************
Adafruit_MQTT_Publish C02Pub(&mqtt, "C02");   // publish topic*********************************************
Adafruit_MQTT_Publish VOCPub(&mqtt, "VOC");   // publish topic*********************************************
Adafruit_MQTT_Publish TemperaturePub(&mqtt, "Temperature");   // publish topic*********************************************
Adafruit_MQTT_Publish PressurePub(&mqtt, "Pressure");   // publish topic*********************************************
Adafruit_MQTT_Publish AltitudePub(&mqtt, "Altitude");   // publish topic*********************************************
Adafruit_MQTT_Publish HumidityPub(&mqtt, "Humidity");   // publish topic*********************************************
Adafruit_MQTT_Publish particles_03umPub(&mqtt, "particles_03um");   // publish topic*********************************************
Adafruit_MQTT_Publish particles_05umPub(&mqtt, "particles_05um");   // publish topic*********************************************
Adafruit_MQTT_Publish particles_10umPub(&mqtt, "particles_10um");   // publish topic*********************************************
Adafruit_MQTT_Publish particles_25umPub(&mqtt, "particles_25um");   // publish topic*********************************************
Adafruit_MQTT_Publish particles_50umPub(&mqtt, "particles_50um");   // publish topic*********************************************
Adafruit_MQTT_Publish particles_100umPub(&mqtt, "particles_100um");   // publish topic*********************************************/

//Adafruit_MQTT_Subscribe LightSub(&mqtt, "Light"); // subscribe to each topic***********************************

Adafruit_TCS34725 tcs = Adafruit_TCS34725(TCS34725_INTEGRATIONTIME_700MS, TCS34725_GAIN_1X); //RGB colour sensor

char ssid[] = SECRET_SSID;   // your network SSID (name)
char pass[] = SECRET_PASS;   // your network password (use for WPA, or use as key for WEP)
int status = WL_IDLE_STATUS; // the Wifi radio's status

unsigned long fastDelayTime = 500;
unsigned long slowDelayTime = 10000;
unsigned long previousFastMillis = 0;
unsigned long previousSlowMillis = 0;
unsigned long lastPing = 0;
const unsigned long KEEPALIVE = 60000;


/* //sensors:
int sensorPin = A0;    // sdefines input pin for the wind sensor
uint32_t windsensorValue = 0;  // variable to store the value coming from the wind sensor
int moisturePin = A1; // this defines the pin A0 as the moisture sensor pin
uint32_t moistureReading;  // this holds the reading from the soil moisture sensor
int temperaturePin = A2; // defines the pin A2 as the temperature sensor pin
uint32_t temperatureReading;  // this holds the reading from the soil temperature sensor*/

void setup() {
  
  Serial.begin(115200);
  tcs.begin(); //RGB colour sensor
    
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

//  LightSub.setCallback(LightCallback); // each subscription needs a callback function *************
//  mqtt.subscribe(&LightSub); // for each
}

void setRGB(uint8_t r, uint8_t g, uint8_t b) {
  WiFiDrv::analogWrite(25, r);
  WiFiDrv::analogWrite(26, g);
  WiFiDrv::analogWrite(27, b);
}

void loop() {
  if (!mqtt_loop()) return;

    // This sends the sensor data that needs to be sent quickly to shiftr - ie//wind
    unsigned long currentMillis = millis();
    if (currentMillis - previousFastMillis >= fastDelayTime) {
        previousFastMillis = currentMillis;
        // This runs every fastDelayTime ms
        // Process fast sensors    

          //this converts the RGB colour sensor data 
          float red, green, blue; //taken from the other sketch to transform RGB values
          uint16_t r, g, b, c, colorTemp, lux;
          tcs.getRawData(&r, &g, &b, &c);
          tcs.getRGB(&red, &green, &blue);//taken from the other sketch to transform RGB values
          colorTemp = tcs.calculateColorTemperature(r, g, b);
          lux = tcs.calculateLux(r, g, b);
          
          //RBG sensor
           //print sensor values only when necessary - else look at shiftr
          colorTempPub.publish(uint32_t(colorTemp));  // this what I add *****************************************************
          Serial.print("Color Temp: "); Serial.print(colorTemp, DEC); Serial.println(" K ");
          luxPub.publish(uint32_t(lux));  // this what I add *****************************************************
          Serial.print("Lux: "); Serial.println(lux, DEC);
    
 

  // This sends the sensors that change less frequently to shiftr
        if (currentMillis - previousSlowMillis >= slowDelayTime) {
          previousSlowMillis = currentMillis;


        
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
