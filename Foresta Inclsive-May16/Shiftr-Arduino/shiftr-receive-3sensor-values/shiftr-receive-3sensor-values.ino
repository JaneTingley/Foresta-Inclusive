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



//https://learn.adafruit.com/pm25-air-quality-sensor/arduino-code
//#include <SoftwareSerial.h>
//SoftwareSerial pmsSerial(2, 3);  --------------When this is not commented out - you cannot see the incoming values

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

int sensorPin = A0;    // select the input pin for the wind sensor
int windsensorValue = 0;  // variable to store the value coming from the wind sensor

unsigned long lastMillis = 0;
int moistureReading = 0;   // This is for the received sensor value sent by shiftr
int lightReading = 0;   // This is for the received sensor value sent by shiftr
int temperatureReading = 0;   // This is for the received sensor value sent by shiftr

int moistureThreshold = 470;  // This holds the threshold for the soil - change here and reupload
int valveTime = 4000;  // The amount of time between each time the valve is actuated (seconds)

void connect() {
  Serial.print("connecting...");
  while (!client.connect("Foresta-InclusiveRECEIVE3SENSORS", "83aa4496", "02ffd19115bcd0ed")) {
    Serial.print(".");
    delay(1000);
  }

  Serial.println("\nconnected!");  //  '/n' means start at new line

  client.subscribe("/WetSoil");  //     '/' all names start with a slash
  //client.unsubscribe("/WetSoil");
  client.subscribe("/Light");  //     '/' all names start with a slash
  client.subscribe("/Temperature");  //     '/' all names start with a slash
}

void messageReceived(String &topic, String &payload) {   // string is a type of variable - a series of characters (topic= /WetSoil  payload= the value
  if (topic== "moistureReading"){
   moistureReading = payload.toInt(); // this translates the payload string into and integer, which is now stored in moistureReading
  }
  if (topic== "lightReading"){
   lightReading = payload.toInt(); // this translates the payload string into and integer, which is now stored in moistureReading
  } 
  if (topic== "temperatureReading"){
   temperatureReading = payload.toInt(); // this translates the payload string into and integer, which is now stored in moistureReading
  }
  Serial.println("incoming: " + topic + " - " + payload);  // see serial - this is how the information is displayed
}

void setup() {
  Serial.begin(9600);

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

  // This sends the threshold value to the wifi module  
  if (millis() - lastMillis > 1000) {
    lastMillis = millis();
    windsensorValue = analogRead(sensorPin);
    client.publish("/Wind", String(windsensorValue));
    Serial.print("Wind value: ");Serial.println(windsensorValue);
    client.publish("/NewThreshold", String(moistureThreshold)); // sending to shiftr client.publish("NewThreshold", String(moistureThreshold)); // sending to shiftr
    Serial.print("moistureThreshold value : "); Serial.println(moistureThreshold);
    client.publish("/ValveTime", String(valveTime));
    Serial.print("valveTime value : "); Serial.println(valveTime);
  }

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
