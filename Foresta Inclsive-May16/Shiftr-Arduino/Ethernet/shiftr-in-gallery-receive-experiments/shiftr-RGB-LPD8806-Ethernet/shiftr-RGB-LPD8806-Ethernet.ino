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

#include "LPD8806.h"
#include "SPI.h"

// Simple test for LPD8806-based RGB LED strip
// Not compatible with Trinket/Gemma due to limited RAM

/*****************************************************************************/

    // from DhcpAddressPrinter 
                byte mac[] = {
                  0x00, 0xAA, 0xBB, 0xCC, 0xDE, 0x04 /*change mac address so it is different from the programme 
                  on send arduino */
                };
    // end from DhcpAddressPrinter

EthernetClient net;
MQTTClient client;

// Number of RGB LEDs in strand:
int nLEDs = 32;

// Chose 2 pins for output; can be any valid output pins:
int dataPin  = 2;
int clockPin = 3;

// First parameter is the number of LEDs in the strand.  The LED strips
// are 32 LEDs per meter but you can extend or cut the strip.  Next two
// parameters are SPI data and clock pins:
LPD8806 strip = LPD8806(nLEDs, dataPin, clockPin);

unsigned long lastMillis = 0;
int lightReading = 0;   // This is for the received sensor value sent by shiftr

void setup() {
  Serial.begin(9600);
    // Start up the LED strip
  strip.begin();
  // Update the strip, to start they are all 'off'
  strip.show();

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

        // Fill the entire strip with...
    if (lightReading >300) {
    Serial.println (lightReading);
    for(int i=0; i<strip.numPixels(); i++) strip.setPixelColor(i, strip.Color(127,0,0)); // red;
      strip.show();              // Refresh LED states
      delay (100);
    }
  else if (lightReading <300) {
    Serial.println (lightReading);
    for(int i=0; i<strip.numPixels(); i++) strip.setPixelColor(i, strip.Color(0,0,127)); // blue;
        strip.show();              // Refresh LED states
        delay (100);
      }
  

  /*// This sends the threshold value to the wifi module  
  if (millis() - lastMillis > 1000) {
    lastMillis = millis();

  }*/

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

void connect() {
  Serial.print("connecting...");
  while (!client.connect("Foresta-InclusiveRGB", "83aa4496", "02ffd19115bcd0ed")) {
    Serial.print(".");
    delay(1000);
  }

  Serial.println("\nconnected!");  //  '/n' means start at new line
  
  //client.unsubscribe("/Light");
  client.subscribe("/Light");  //     '/' all names start with a slash

}

void messageReceived(String &topic, String &payload) {   // string is a type of variable - a series of characters (topic= /WetSoil  payload= the value

  if (topic== "/Light"){
   lightReading = payload.toInt(); // this translates the payload string into and integer, which is now stored in lightReading  

  } 

  Serial.println("incoming: " + topic + " - " + payload);  // see serial - this is how the information is displayed
    
}
