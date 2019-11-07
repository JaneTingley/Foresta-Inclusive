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
                  0x00, 0xAA, 0xBB, 0xCC, 0xDE, 0x02 /*change mac address so it is different from the programme 
                  on send arduino */
                };
    // end from DhcpAddressPrinter

EthernetClient net;
MQTTClient client;

unsigned long lastMillis = 0;
int moistureThreshold = 100;  // this is to hold the value for the soil moisture thresholdmoistureThreshold = 100;
int moisturePin = A0; // this defines the pin A0 as the moisture sensor pin
int moistureReading;  // this holds the reading from the moisture sensor
int lightPin = A1;  // this defines the pin A1 as the light sensor pin
int lightReading;  // this holds the reading from the light sensor
int temperaturePin = A2; // this defines the pin A2 as the temperature sensor pin
int temperatureReading;  // this holds the reading from the temperature sensor
int motorPin1 = 6; // Ball-Motor
int motorPin2 = 7; // Ball-Motor


void setup() {
  Serial.begin(115200);
  pinMode(motorPin1, OUTPUT); //set pins as output
  pinMode(motorPin2, OUTPUT);  //set pins as output
  pinMode (moisturePin,INPUT); // Initializing soil moisture sensor as input
  pinMode (lightPin,INPUT); // Initializing light sensor as input
  pinMode (temperaturePin,INPUT); // Initializing soil temperature sensor as input
 
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
  client.onMessage(messageReceived); // call this function (message received) whenever there is a message

  connect();
}

void loop() {

  moistureReading = analogRead(moisturePin);
  lightReading = analogRead(lightPin);
  temperatureReading = analogRead(temperaturePin); 
  temperatureReading = map(temperatureReading, 0, 625, -40, 85);

  if (moistureReading < moistureThreshold)  {  // reads moistureReading - if smaller than moistureThreshold then open valve
    // Turn the motor in one direction
    digitalWrite(motorPin1, LOW); //open
    digitalWrite(motorPin2, HIGH);
  } 
  else {
    digitalWrite(motorPin1, HIGH); //close
    digitalWrite(motorPin2, LOW);
  }
  delay (100);
  
  client.loop();

  if (!client.connected()) {
    connect();
  } 
  if (millis() - lastMillis > 1000) {
      lastMillis = millis();
      //Serial.print("moistureThreshold value");
      //Serial.println(moistureThreshold);
      client.publish("/WetSoil", String(moistureReading)); // sending to shiftr    client.publish("/WetSoil", String(moisture-reading)); // sending to shiftr
      client.publish("/Light", String(lightReading)); // sending to shiftr    client.publish("/WetSoil", String(moisture-reading)); // sending to shiftr
      client.publish("/Temperature", String(temperatureReading)); // sending to shiftr    client.publish("/WetSoil", String(moisture-reading)); // sending to shiftr
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
  while (!client.connect("Foresta-InclusiveSEND3SENSOR", "83aa4496", "02ffd19115bcd0ed")) {
    Serial.print(".");
    delay(1000);
  }

  Serial.println("\nconnected!"); //  '/n' means start at new line

  client.subscribe("/NewThreshold"); //     '/' all names start with a slash
  //client.unsubscribe("/NewThreshold");
}

void messageReceived(String &topic, String &payload) {   // string is a type of variable - a series of characters (topic= /moistureThreshold   payload= the value
  moistureThreshold = payload.toInt(); // this translates the payload string into an integer, which is now stored in sensorValue
  Serial.println("incoming: " + topic + " - " + payload);  // see serial - this is how the information is displayed

}
