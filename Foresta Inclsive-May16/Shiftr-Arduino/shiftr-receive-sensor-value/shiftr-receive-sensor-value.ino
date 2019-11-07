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

#include <Ethernet.h>
#include <MQTT.h>
#include <SPI.h> //from DhcpAddressPrinter


    // from DhcpAddressPrinter 
                byte mac[] = {
                  0x00, 0xAA, 0xBB, 0xCC, 0xDE, 0x03 /*change mac address so it is different from the programme 
                  on send arduino */
                };
    // end from DhcpAddressPrinter

EthernetClient net;
MQTTClient client;

int sensorValue = 0;
int onActuator = 8;    //Led Light on/off

void connect() {
  Serial.print("connecting...");
  while (!client.connect("Foresta-InclusiveRECEIVE", "83aa4496", "02ffd19115bcd0ed")) {
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
  Serial.begin(115200);
  pinMode(onActuator, OUTPUT); //Set LED pin as output

    // from DhcpAddressPrinter           
                   // start the Ethernet connection:
                    Serial.println("Initialize Ethernet with DHCP:");
                    if (Ethernet.begin(mac) == 0) {
                      Serial.println("Failed to configure Ethernet using DHCP");
                      if (Ethernet.hardwareStatus() == EthernetNoHardware) {
                        Serial.println("Ethernet shield was not found.  Sorry, can't run without hardware. :(");
                      } else if (Ethernet.linkStatus() == LinkOFF) {
                        Serial.println("Ethernet cable is not connected.");
                      }
                      // no point in carrying on, so do nothing forevermore:
                     while (true) {
                        delay(1);
                      }
                    }
                    // print your local IP address:
                    Serial.print("My IP address: ");
                    Serial.println(Ethernet.localIP());
    // end from DhcpAddressPrinter

  // Note: Local domain names (e.g. "Computer.local" on OSX) are not supported by Arduino.
  // You need to set the IP address directly.
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


      // from DhcpAddressPrinter 
                        switch (Ethernet.maintain()) {
                        case 1:
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
                          break;
                          
                      }
      // end from DhcpAddressPrinter

  
}
