#include <SPI.h>
#include <WiFiNINA.h>
#include <utility/wifi_drv.h>
#include <Adafruit_MQTT.h>
#include <Adafruit_MQTT_Client.h>

#include "arduino_secrets.h" 

WiFiClient net;

#define REDPIN 5
#define GREENPIN 6
#define BLUEPIN 3
 
#define FADESPEED 5     // make this higher to slow down

#define MQTT_SERVER "broker.shiftr.io"
#define MQTT_PORT 1883
Adafruit_MQTT_Client mqtt(&net, MQTT_SERVER, MQTT_PORT, MQTT_NAMESPACE, MQTT_USERNAME, MQTT_PASSWORD);

Adafruit_MQTT_Publish dummyPub(&mqtt, "dummy");   // publish topic
Adafruit_MQTT_Subscribe LightSub(&mqtt, "Light"); // subscribe to each topic

char ssid[] = SECRET_SSID;   // your network SSID (name)
char pass[] = SECRET_PASS;   // your network password (use for WPA, or use as key for WEP)
int status = WL_IDLE_STATUS; // the Wifi radio's status

unsigned long lastMillis = 0;
unsigned long lastPing = 0;
const unsigned long KEEPALIVE = 60000;
uint32_t counter = 0;

void setup() {
  pinMode(REDPIN, OUTPUT);
  pinMode(GREENPIN, OUTPUT);
  pinMode(BLUEPIN, OUTPUT);

  analogWrite(REDPIN, 0);
  analogWrite(GREENPIN, 0);
  analogWrite(BLUEPIN, 255);
  
  Serial.begin(115200);
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

  LightSub.setCallback(LightCallback); // each subscription needs a callback function
  mqtt.subscribe(&LightSub); // for each
}

void setRGB(uint8_t r, uint8_t g, uint8_t b) {
  WiFiDrv::analogWrite(25, r);
  WiFiDrv::analogWrite(26, g);
  WiFiDrv::analogWrite(27, b);
}

void loop() {
  mqtt_loop();
  
  unsigned long currentTime = millis();
  if (currentTime - lastMillis > 10000) {
    lastMillis = currentTime;
    dummyPub.publish(counter);  // this what I add *****************************************************
    Serial.print("Publish: "); Serial.println(counter);
    counter++;
  }
}

void LightCallback(uint32_t Light) {  // each needs a seperate one
  setRGB(0, 100, 0);
  Serial.print("from MQTT: "); Serial.println(Light);
  delay(100);
  setRGB(0, 0, 0);

  int r, g, b;  //defines R,G,B as variables
  
  if (Light>= 300) { 
  // fade from blue to violet
    for (r = 0; r < 256; r++) { // fade out red
      analogWrite(REDPIN, r);
      delay(FADESPEED);
    }
  }
  else {
    // fade from violet to blue
    for (r = 255; r > 0; r--) { // fade in red
      analogWrite(REDPIN, r);
      delay(FADESPEED);
  } 
  }
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
