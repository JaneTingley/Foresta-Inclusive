/***************************************************************************
  This is a sketch that connects the 

Anemometer wind Sensor - https://www.adafruit.com/product/1733

Notes on wiring:

Anemometer wind sensor -- red to + of power source - 12vdc is fine.  
    Black is to ground on power source and ground on microcontroller.
    Blue goes to A0

 ***************************************************************************/

#include <SPI.h>
#include <WiFiNINA.h>
#include <utility/wifi_drv.h>
#include <Adafruit_MQTT.h>
#include <Adafruit_MQTT_Client.h>

//RGB
#include <Wire.h>
#include "Adafruit_TCS34725.h"

#include "arduino_secrets.h" 

WiFiClient net;

#define MQTT_SERVER "broker.shiftr.io"
#define MQTT_PORT 1883
Adafruit_MQTT_Client mqtt(&net, MQTT_SERVER, MQTT_PORT, MQTT_NAMESPACE, MQTT_USERNAME, MQTT_PASSWORD);

Adafruit_MQTT_Publish colorTempPub(&mqtt, "colorTemp");   // publish topic*********************************************
Adafruit_MQTT_Publish luxPub(&mqtt, "lux");               // publish topic*********************************************
Adafruit_MQTT_Publish WindPub(&mqtt, "Wind");             // publish topic*********************************************

char ssid[] = SECRET_SSID;   // your network SSID (name)
char pass[] = SECRET_PASS;   // your network password (use for WPA, or use as key for WEP)
int status = WL_IDLE_STATUS; // the Wifi radio's status

unsigned long lastMillis = 0;
unsigned long lastPing = 0;
const unsigned long KEEPALIVE = 60000;
uint32_t counter = 0;

Adafruit_TCS34725 tcs = Adafruit_TCS34725(TCS34725_INTEGRATIONTIME_700MS, TCS34725_GAIN_1X);

//sensors:
int sensorPin = A0;    // sdefines input pin for the wind sensor
uint32_t windsensorValue = 0;  // variable to store the value coming from the wind sensor

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
