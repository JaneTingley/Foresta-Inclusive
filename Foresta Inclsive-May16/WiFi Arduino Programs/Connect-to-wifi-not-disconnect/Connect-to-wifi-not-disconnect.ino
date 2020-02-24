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
#include <Ethernet.h> //from Shiftr
#include <MQTT.h> //from Shiftr

#include "arduino_secrets.h" 
///////please enter your sensitive data in the Secret tab/arduino_secrets.h

EthernetClient net; //from Shiftr
MQTTClient client; //from Shiftr

int sensorValue = 0;   // This is for the received sensor value sent by shiftr
int onActuator = 8;    //Led Light on/off
char ssid[] = SECRET_SSID;        // your network SSID (name)
char pass[] = SECRET_PASS;    // your network password (use for WPA, or use as key for WEP)
int status = WL_IDLE_STATUS;     // the Wifi radio's status
unsigned long lastMillis = 0;  // to act as a timer for verifying the connection to wifi is still working

void connect() {
  Serial.print("connecting...");
  while (!client.connect("Foresta-InclusiveNEW", "83aa4496", "02ffd19115bcd0ed")) {
    Serial.print(".");
    delay(1000);
  }

  Serial.println("\nconnected!");  //  '/n' means start at new line

  client.subscribe("/sensor1");  //     '/' all names start with a slash
  //client.unsubscribe("/sensor1");
}

void messageReceived(String &topic, String &payload) {   // string is a type of variable - a series of characters (topic= /sensor1  payload= the value
  sensorValue = payload.toInt(); // this translates the payload string into and integer, which is now stored in sensorValue
  Serial.println("incoming: " + topic + " - " + payload);  // see serial - this is how the information is displayed
  //Serial.print("Sensor Value: ");//prints sensorValue
  //Serial.println(sensorValue);//prints sensorValue
}

void setup() {
  pinMode(onActuator, OUTPUT); //Set LED pin as output
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

// The following is for Shiftr - connecting
  client.begin("broker.shiftr.io", net);
  client.onMessage(messageReceived);  // call this function (message received) whenever there is a message

  connect();
}

void loop() {
  client.loop();

  if (!client.connected()) {
    connect();
  }

  if (sensorValue >300) {  // reads sensorValue and if more than 330 - turns on LEd - (solenoid)
    digitalWrite(onActuator, HIGH);//turn D8 "On"
  }
  else {
    digitalWrite(onActuator, LOW);//turn D8 "Off"
  }
  delay (100);



   // publish a message roughly every 100 seconds.
  if (millis() - lastMillis > 100000) {
    lastMillis = millis();
    printCurrentNet();
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
