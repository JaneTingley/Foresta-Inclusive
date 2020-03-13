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


//Ethernet and SHiftr
#include <Ethernet.h>
#include <MQTT.h>
#include <SPI.h> //from DhcpAddressPrinter

#define REDPIN 5
#define GREENPIN 6
#define BLUEPIN 3

#define FADESPEED 5     // make this higher to slow down

// from DhcpAddressPrinter 
        byte mac[] = {
          0x00, 0xAA, 0xBB, 0xCC, 0xDE, 0x03 /*change mac address so it is different from the programme 
         // on send arduino */
        };
// end from DhcpAddressPrinter

EthernetClient net;
MQTTClient client;

//unsigned long lastMillis = 0;
int lightReading = 0;   // This is for the received sensor value sent by shiftr

void setup() {
  Serial.begin(9600);  

  pinMode(REDPIN, OUTPUT);
  pinMode(GREENPIN, OUTPUT);
  pinMode(BLUEPIN, OUTPUT);
  
//from DhcpAddressPrinter           
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

  int r, g, b;

  // fade from blue to violet
  for (r = 0; r < 256; r++) { 
    analogWrite(REDPIN, r);
    delay(FADESPEED);
  } 
  // fade from violet to red
  for (b = 255; b > 0; b--) { 
    analogWrite(BLUEPIN, b);
    delay(FADESPEED);
  } 
  // fade from red to yellow
  for (g = 0; g < 256; g++) { 
    analogWrite(GREENPIN, g);
    delay(FADESPEED);
  } 
  // fade from yellow to green
  for (r = 255; r > 0; r--) { 
    analogWrite(REDPIN, r);
    delay(FADESPEED);
  } 
  // fade from green to teal
  for (b = 0; b < 256; b++) { 
    analogWrite(BLUEPIN, b);
    delay(FADESPEED);
  } 
  // fade from teal to blue
  for (g = 255; g > 0; g--) { 
    analogWrite(GREENPIN, g);
    delay(FADESPEED);
  } 

 // for(int i=0; i<strip.numPixels(); i++) strip.setPixelColor(i, strip.Color(0,12,40)); // White;
      //strip.show();              // Refresh LED states
      //delay (100);
      
  // This sends the threshold value to the wifi module  
  /*if (millis() - lastMillis > 3000) {
    lastMillis = millis();
    for(int i=0; i<NUMPIXELS; i++) { // For each pixel...

    // pixels.Color() takes RGB values, from 0,0,0 up to 255,255,255
    pixels.setPixelColor(i, pixels.Color(182, 29, 142));
    pixels.show();   // Send the updated pixel colors to the hardware.
    delay(DELAYVAL); // Pause before next pass through loop
  }
  }*/

 
  DhcAddress (); 
}

void connect() {
  Serial.print("connecting...");
  while (!client.connect("Foresta-InclusiveRGBPanel", "83aa4496", "02ffd19115bcd0ed")) {
    Serial.print(".");
    delay(1000);
  }

  Serial.println("\nconnected!");  //  '/n' means start at new line
  //client.unsubscribe("/WetSoil");
  client.subscribe("/Light");  //     '/' all names start with a slash
}

void messageReceived(String &topic, String &payload) {   // string is a type of variable - a series of characters (topic= /WetSoil  payload= the value
  if (topic== "lightReading"){
   lightReading = payload.toInt(); // this translates the payload string into and integer, which is now stored in moistureReading
  } 

  Serial.println("incoming: " + topic + " - " + payload);  // see serial - this is how the information is displayed
}

void DhcAddress (){
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
