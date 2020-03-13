/*

 This example connects to an unencrypted Wifi network.
 Then it prints the  MAC address of the Wifi module,
 the IP address obtained, and other network details.

 created 13 July 2010
 by dlf (Metodo2 srl)
 modified 31 May 2012
 by Tom Igoe
 */
#include <SPI.h>
#include <WiFiNINA.h>
//#include <Ethernet.h>
#include <MQTT.h>
//#include <SPI.h> //from DhcpAddressPrinter

#include "arduino_secrets.h" 
///////please enter your sensitive data in the Secret tab/arduino_secrets.h

WiFiClient net; //from wifinina
MQTTClient client; //from Shiftr


char ssid[] = SECRET_SSID;        // your network SSID (name)
char pass[] = SECRET_PASS;    // your network password (use for WPA, or use as key for WEP)
int status = WL_IDLE_STATUS;     // the Wifi radio's status
unsigned long lastMillis = 0;
int fsrAnalogPin = 0; // FSR is connected to analog 0 (pressure sensor)
int fsrReading;      // the analog reading from the FSR resistor divider

void connect() {
  Serial.print("connecting...");
  while (!client.connect("Foresta-Inclusive2", "83aa4496", "02ffd19115bcd0ed")) {
    Serial.print(".");
    delay(1000);
  }

  Serial.println("\nconnected!"); //  '/n' means start at new line

  //client.subscribe("/sensor1"); //     '/' all names start with a slash
  client.unsubscribe("/WetSoil");
}

void messageReceived(String &topic, String &payload) {  // string is a type of variable - a series of characters (topic= / sensor1  payload= the value
  Serial.println("incoming: " + topic + " - " + payload);  // see seria - this is how the information is displayed
}

void setup() {
  //Initialize serial and wait for port to open:
  Serial.begin(9600);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
  }

  // check for the WiFi module:
  if (WiFi.status() == WL_NO_MODULE) {
    Serial.println("Communication with WiFi module failed!");
    // don't continue
    while (true);
  }

  String fv = WiFi.firmwareVersion();
  if (fv < "1.0.0") {
    Serial.println("Please upgrade the firmware");
  }

  // attempt to connect to Wifi network:
  while (status != WL_CONNECTED) {
    Serial.print("Attempting to connect to WPA SSID: ");
    Serial.println(ssid);
    // Connect to WPA/WPA2 network:
    status = WiFi.begin(ssid, pass);

    // wait 10 seconds for connection:
    delay(10000);
  }

  // you're connected now, so print out the data:
  Serial.print("You're connected to the network");
  printCurrentNet();
  printWifiData();

  client.begin("broker.shiftr.io", net);
  client.onMessage(messageReceived); // call this function (message received) whenever there is a message

  connect();

}

void loop() {
  // check the network connection once every 10 seconds:
  delay(10000);
  printCurrentNet();

   if (!client.connected()) {
    connect();
  }

  fsrReading = analogRead(fsrAnalogPin);
  Serial.print("Analog reading = ");
  Serial.println(fsrReading);
  // publish a message roughly every 2 seconds.
  if (millis() - lastMillis > 1000) {
    lastMillis = millis();
    client.publish("/woot2", String(fsrReading)); // sending to shiftr    client.publish("/woot2", String(lastmillis)); // sending to shiftr
  }
  
}

void printWifiData() {
  // print your board's IP address:
  IPAddress ip = WiFi.localIP();
  Serial.print("IP Address: ");
  Serial.println(ip);
  Serial.println(ip);

  // print your MAC address:
  byte mac[6];
  WiFi.macAddress(mac);
  Serial.print("MAC address: ");
  printMacAddress(mac);
}

void printCurrentNet() {
  // print the SSID of the network you're attached to:
  Serial.print("SSID: ");
  Serial.println(WiFi.SSID());

  // print the MAC address of the router you're attached to:
  byte bssid[6];
  WiFi.BSSID(bssid);
  Serial.print("BSSID: ");
  printMacAddress(bssid);

  // print the received signal strength:
  long rssi = WiFi.RSSI();
  Serial.print("signal strength (RSSI):");
  Serial.println(rssi);

  // print the encryption type:
  byte encryption = WiFi.encryptionType();
  Serial.print("Encryption Type:");
  Serial.println(encryption, HEX);
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
