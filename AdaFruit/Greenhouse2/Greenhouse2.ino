// AIO_LED_Pot - AIO_LED_Pot.ino
//
// Description:
// Interfaces an LED and a potentiometer on an Arduino Uno WiFi Rev2 with the
// Adafruit IO service.
// Note: Must use Adafruit's modified version of the WiFiNINA library
// (https://github.com/adafruit/WiFiNINA), define USE_AIRLIFT, and instantiate
// AdafruitIO_WiFi with pin connections for Arduino Uno WiFi Rev2 compatability.
// NOTE: The sketch sometimes gets stuck initially connecting to the service and
// needs to be reuploaded.
//
// Circuit:
// Red LED connected to pin D2.
// 10K potentiometer connected to pin A0.
//
// Created by John Woolsey on 05/29/2019.
// Copyright © 2019 Woolsey Workshop.  All rights reserved.

#include <Wire.h>
#include "Adafruit_AM2315.h"

Adafruit_AM2315 am2315;
//-------------------------->>>>>>>>> Please buy this sensor https://elmwoodelectronics.ca/products/am2315-encased-i2c-temperature-humidity-sensor
//---------------------------------->>>>>> Also available at Digikey

// Defines
#define AIO_USERNAME    "USERNAME"  //Ada fruit username
#define AIO_KEY         "KEY" //Ada fruit IO key (top right of interface)
#define AIO_TEMP_FEED   "temperature"  
#define AIO_HUM_FEED    "humidity"
#define AIO_LED_FEED    "led"
#define WIFI_SSID       "WIFI name"  // Wifi name
#define WIFI_PASS       "WIFI password" // wifi password
#define USE_AIRLIFT     // required for Arduino Uno WiFi R2 board compatability

//----------------------->>>>>>To use this you need create the temp feed, humidity feed and LED feed and the dashboard in adafruit IO

// Libraries
#include <AdafruitIO_WiFi.h>


// Constructors
AdafruitIO_WiFi aio(AIO_USERNAME, AIO_KEY, WIFI_SSID, WIFI_PASS, SPIWIFI_SS, SPIWIFI_ACK, SPIWIFI_RESET, NINA_GPIO0, &SPI);
AdafruitIO_Feed *tempFeed = aio.feed(AIO_TEMP_FEED);
AdafruitIO_Feed *humFeed = aio.feed(AIO_HUM_FEED);
AdafruitIO_Feed *ledFeed = aio.feed(AIO_LED_FEED);


void setup() {
   // Pin configuration
   pinMode(LED_BUILTIN, OUTPUT);

   // Serial bus initialization (Serial Monitor)
   Serial.begin(115200);
   //while(!Serial);  // wait for serial connection
   delay(1000);
   if (!am2315.begin()) {
     Serial.println("Sensor not found, check wiring & pullups!");
     while (1) {
        digitalWrite(LED_BUILTIN, digitalRead(LED_BUILTIN) ? LOW : HIGH);
        delay(200);
     }
   }

  // Adafruit IO connection and configuration
   Serial.print("Board "); Serial.print(aio.boardType()); Serial.print(" : "); Serial.println(aio.boardID());
   Serial.print("Connecting to Adafruit IO");
   aio.connect();  // connect to Adafruit IO service
   while(aio.status() < AIO_CONNECTED) {
      Serial.print(".");
      delay(1000);  // wait 1 second between checks
   }
   Serial.println();
   Serial.println(aio.statusText());  // print AIO connection status
   // Set up message handler that calls function when messages are received
   ledFeed->onMessage(ledMessageHandler);

   // Synchronize current state
   ledFeed->get();  // request feed value (message) from AIO
}


void loop() {
  aio.run();  // keep client connected to AIO service

  float temperature, humidity;

  if (!am2315.readTemperatureAndHumidity(&temperature, &humidity)) {
    Serial.println("Failed to read data from AM2315");
    delay(500);
    return;
  }
  Serial.print("Temp *C: "); Serial.println(temperature);
  Serial.print("Hum %: "); Serial.println(humidity);

  tempFeed->save(temperature);
  humFeed->save(humidity);
  delay(5000);  // limit AIO updates (30 per minute on free tier)
}

void ledMessageHandler(AdafruitIO_Data *data) {
  String value = data->toString();  // capture feed value from AIO
  Serial.print("LED feed received -> ");
  Serial.println(value);
  digitalWrite(LED_BUILTIN, value == "ON" ? HIGH : LOW);
}
