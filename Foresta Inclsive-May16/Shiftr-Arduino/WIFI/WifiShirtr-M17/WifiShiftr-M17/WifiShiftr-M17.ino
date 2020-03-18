#include <SPI.h>
#include <WiFiNINA.h>
#include <Adafruit_MQTT.h>
#include <Adafruit_MQTT_Client.h>

#include "arduino_secrets.h" 

WiFiClient net;

#define MQTT_SERVER "broker.shiftr.io"
#define MQTT_PORT 1883
#define MQTT_TOPIC "dummy"
Adafruit_MQTT_Client mqtt(&net, MQTT_SERVER, MQTT_PORT, MQTT_NAMESPACE, MQTT_USERNAME, MQTT_PASSWORD);

Adafruit_MQTT_Publish dummyPub = Adafruit_MQTT_Publish(&mqtt, MQTT_TOPIC);
//Subscribe:
//Adafruit_MQTT_Subscribe dummySub = Adafruit_MQTT_Subscribe(&mqtt, MQTT_TOPIC, MQTT_QOS_1);

char ssid[] = SECRET_SSID;   // your network SSID (name)
char pass[] = SECRET_PASS;   // your network password (use for WPA, or use as key for WEP)
int status = WL_IDLE_STATUS; // the Wifi radio's status

unsigned long lastMillis = 0;
unsigned long lastPing = 0;
const unsigned long KEEPALIVE = 60000;
int counter = 0;

void setup() {
  Serial.begin(115200);
  while (!Serial && millis() < 4000);
  delay(100);
  Serial.println("\nHello WifiShiftr");

  if (WiFi.status() == WL_NO_MODULE) {
    Serial.println("Communication with WiFi module failed!");
    while (true);
  }

  while (status != WL_CONNECTED) {
    Serial.print("WiFi: Connecting to ");
    Serial.print(ssid);
    Serial.println("...");
    status = WiFi.begin(ssid, pass);
    while (status != WL_CONNECTED) {
      delay(100);
    }
  }

  // you're connected now, so print out the data:
  Serial.print("   connected to ");
  Serial.println(ssid);
  printCurrentNet();
  printWifiData();

//Subscribe:
//  dummySub.setCallback(dummyCallback);
//  mqtt.subscribe(&dummySub);
}

void loop() {
  if (WiFi.status() != WL_CONNECTED) {
    Serial.println("Lost WiFi connection. FIXME: Write restart logic");
  }
  MQTT_connect();

//Subscribe:
//  while (Adafruit_MQTT_Subscribe *subscription = mqtt.readSubscription(1000)) {
//    if (subscription == &dummySub) {
//      Serial.print("Got: "); Serial.println((char *)dummySub.lastread);
//    }
//  }
  

//  if (currentTime - lastMillis > 10000) {
//    lastMillis = currentTime;
//    dummyPub.publish(uint32_t(counter));
//   Serial.print("Publish: "); Serial.println(counter);
//    counter++;
//  }
  
  unsigned long currentTime = millis();
  if (currentTime - lastPing > KEEPALIVE) {
    if (mqtt.ping()) {
      lastPing = currentTime;
    }
    else {
      Serial.println("MQTT Ping failed");
    }
    int pingResult = WiFi.ping("google.com");
    if (pingResult < 0) {
      Serial.print("Ping failed: "); Serial.println(pingResult);
    }
  }
}

//Subscribe:
//void dummyCallback(uint32_t current) {
//  Serial.print("from MQTT: "); Serial.println(current);
//}

// Function to connect and reconnect as necessary to the MQTT server.
// Should be called in the loop function and it will take care if connecting.
void MQTT_connect() {
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
