//This sketch receives values from Shiftr and sends on serial.
// received by Max. It also receives one byte of info from Max via serial to turn on/off a LED
//trying to get it to receive RGB colour values - this sketch failed

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


//#include <DmxSimple.h>
#include <Ethernet.h>
#include <MQTT.h>
#include <SPI.h> //from DhcpAddressPrinter


    // from DhcpAddressPrinter 
                byte mac[] = {
                  0x00, 0xAA, 0xBB, 0xCC, 0xDE, 0x06 /*change mac address so it is different from the programme 
                  on send arduino */
                };
    // end from DhcpAddressPrinter

EthernetClient net;
MQTTClient client;

unsigned long lastMillis = 0;
int luxReading = 0;   // This is for the received lux sensor value sent by shiftr
int rainReading = 0;   // This is for the received rain sensor value sent by shiftr
int pollenReading = 0;   // This is for the received particle sensor value sent by shiftr
int windReading = 0;  // This is for the received wind sensor value sent by shiftr

const int led = 2; // LED in i/0 2
const int ledR = 5; // LED in i/0 5
const int ledG = 6; // LED in i/0 6
const int ledB = 3; // LED in i/0 3
int value; // to store the received value
int Rvalue; // to store received Red value
int Gvalue; // to store received Green value
int Bvalue; // to store received Blue value

void setup() {
    // put your setup code here, to run once:
  pinMode (led, OUTPUT); // sets pin2 to output
  //pinMode (ledR, OUTPUT); // sets pin5 to output  //trying to be able to send more than one value from MAX - DOES NOT WORK
  //pinMode (ledG, OUTPUT); // sets pin6 to output
  //pinMode (ledB, OUTPUT); // sets pin3 to output
        
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
    Serial.print(luxReading); Serial.print(" "); Serial.print(rainReading); Serial.print(" "); 
    Serial.print(pollenReading); Serial.print(" "); Serial.print (windReading); Serial.println(" ");
  }

  if (Serial.available()){
    //max is sending packets of info
    // space is seperator so we need to store each value
    value= Serial.read();
    //Rvalue= Serial.read();
    //Gvalue= Serial.read();
    //Bvalue= Serial.read();
    //Serial.println (value);
    //Serial.println (Rvalue);
    //Serial.println (Gvalue);
    //Serial.println (Bvalue);

    //led is on or off
    digitalWrite(led, value);
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

void connect() {
  Serial.print("connecting...");
  while (!client.connect("Foresta-InclusiveGALLERY-ARDUINO", "83aa4496", "02ffd19115bcd0ed")) {  
    Serial.print(".");
    delay(1000);
  }

  Serial.println("\nconnected!");  //  '/n' means start at new line

  client.subscribe("/Lux");  //     '/' all names start with a slash
  client.subscribe("/Rain");  //     '/' all names start with a slash
  client.subscribe("/Particles10");  //     '/' all names start with a slash
  client.subscribe("/Wind"); 
}

void messageReceived(String &topic, String &payload) {   // string is a type of variable - a series of characters (topic= /WetSoil  payload= the value
  if (topic== "/Lux"){
   luxReading = payload.toInt(); // this translates the payload string into and integer, which is now stored in luxReading
  }
  if (topic== "/Rain"){
   rainReading = payload.toInt(); // this translates the payload string into and integer, which is now stored in rainReading
  } 
  if (topic== "/Particles10"){
   pollenReading = payload.toInt(); // this translates the payload string into and integer, which is now stored in pollenReading
  }
  if (topic== "/Wind"){
   windReading = payload.toInt(); // this translates the payload string into and integer, which is now stored in windReading
  }
  //Serial.println("incoming: " + topic + " - " + payload);  // see serial - this is how the information is displayed
}
