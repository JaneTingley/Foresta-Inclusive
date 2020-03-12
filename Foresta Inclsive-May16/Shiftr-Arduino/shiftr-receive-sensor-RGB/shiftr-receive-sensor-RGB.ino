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

// Adafruit NeoPixel library
#include <Adafruit_NeoPixel.h>
#ifdef __AVR__
#include <avr/power.h> // Required for 16 MHz Adafruit Trinket
#endif

// Which pin on the Arduino is connected to the NeoPixels?
#define PIN        8 // On Trinket or Gemma, suggest changing this to 1

// How many NeoPixels are attached to the Arduino?
#define NUMPIXELS 484 // Popular NeoPixel ring size

// from DhcpAddressPrinter 
        byte mac[] = {
          0x00, 0xAA, 0xBB, 0xCC, 0xDE, 0x03 /*change mac address so it is different from the programme 
          on send arduino */
        };
// end from DhcpAddressPrinter

Adafruit_NeoPixel pixels(NUMPIXELS, PIN, NEO_GRB + NEO_KHZ800);
    // Argument 1 = Number of pixels in NeoPixel strip
    // Argument 2 = Arduino pin number (most are valid)
    // Argument 3 = Pixel type flags, add together as needed:
    //   NEO_KHZ800  800 KHz bitstream (most NeoPixel products w/WS2812 LEDs)
    //   NEO_KHZ400  400 KHz (classic 'v1' (not v2) FLORA pixels, WS2811 drivers)
    //   NEO_GRB     Pixels are wired for GRB bitstream (most NeoPixel products)
    //   NEO_RGB     Pixels are wired for RGB bitstream (v1 FLORA pixels, not v2)
    //   NEO_RGBW    Pixels are wired for RGBW bitstream (NeoPixel RGBW products)

#define DELAYVAL 10 // Time (in milliseconds) to pause between pixels

EthernetClient net;
MQTTClient client;

int lightReading = 0;   // This is for the received sensor value sent by shiftr

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
