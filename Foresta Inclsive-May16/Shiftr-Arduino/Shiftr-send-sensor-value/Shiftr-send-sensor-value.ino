// This example uses an Arduino Uno together with
// an Ethernet Shield to connect to shiftr.io.
// It also automatically asks for an IP address. This code was taken from
// EXAMPLES/Ethernet/DhcpAddressPrinter
//
// You can see the information here"
// https://shiftr.io/buddadweet/Foresta-Inclusive
//
// by Joël Gähwiler
// https://github.com/256dpi/arduino-mqtt

/* FSR testing sketch. 
 
Connect one end of FSR to 5V, the other end to Analog 0.
Then connect one end of a 10K resistor from Analog 0 to ground
Connect LED from pin 11 through a resistor to ground 
 
For more information see www.ladyada.net/learn/sensors/fsr.html */

#include <Ethernet.h>
#include <MQTT.h>
#include <SPI.h> //from DhcpAddressPrinter


EthernetClient net;
MQTTClient client;

unsigned long lastMillis = 0;
int fsrAnalogPin = 0; // FSR is connected to analog 0 (pressure sensor)
int fsrReading;      // the analog reading from the FSR resistor divider


void connect() {
  Serial.print("connecting...");
  while (!client.connect("Foresta-InclusiveSEND", "83aa4496", "02ffd19115bcd0ed")) {
    Serial.print(".");
    delay(1000);
  }

  Serial.println("\nconnected!"); //  '/n' means start at new line

  //client.subscribe("/sensor1"); //     '/' all names start with a slash
  client.unsubscribe("/sensor1");
}

void messageReceived(String &topic, String &payload) {  // string is a type of variable - a series of characters (topic= / sensor1  payload= the value
  Serial.println("incoming: " + topic + " - " + payload);  // see serial - this is how the information is displayed
}

void setup() {
  Serial.begin(115200);
  

  // Note: Local domain names (e.g. "Computer.local" on OSX) are not supported by Arduino.
  // You need to set the IP address directly.
  client.begin("broker.shiftr.io", net);
  client.onMessage(messageReceived); // call this function (message received) whenever there is a message

  connect();
}

void loop() {
  client.loop();

  if (!client.connected()) {
    connect();
  }

  fsrReading = analogRead(fsrAnalogPin);
  Serial.print("Analog reading = ");
  Serial.println(fsrReading);
  // publish a message roughly every 2 seconds.
  if (millis() - lastMillis > 1000) {
    lastMillis = millis();
    client.publish("/sensor1", String(fsrReading)); // sending to shiftr    client.publish("/sensor1", String(lastmillis)); // sending to shiftr
  }
  



  
}
