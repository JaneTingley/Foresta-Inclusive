/***************************************************************************
  This is a sketch that connects the 
  1) BME280 humidity, temperature & pressure sensor
  2) CCS811 Gas Sensor - Co2 and VOC
  3) TCS34725 - RGB colour sensor - Colour temp, LUX

  These sensors use I2C or SPI to communicate, 2 or 4 pins are required
  to interface. The device's I2C address is either 0x76 or 0x77.

SDA-> Pin 4A on Arduino Uno
SCL -> Pin 5A on Arduino Uno

Notes on wiring:
CCS811 Gas Sensor - Co2 and VOC - must also ground WAKE pin
TCS34725 - RGB colour sensor - To turn off LED on Board ground LED pin


 ***************************************************************************/

#include <Wire.h>
#include <SPI.h>
#include <Adafruit_Sensor.h>
#include <Adafruit_BME280.h>
#include "Adafruit_TCS34725.h" // RGB code
#include "Adafruit_CCS811.h" //CCS811 code

#define BME_SCK 13
#define BME_MISO 12
#define BME_MOSI 11
#define BME_CS 10

#define SEALEVELPRESSURE_HPA (1013.25)

Adafruit_CCS811 ccs;
Adafruit_BME280 bme; // I2C
//Adafruit_BME280 bme(BME_CS); // hardware SPI
//Adafruit_BME280 bme(BME_CS, BME_MOSI, BME_MISO, BME_SCK); // software SPI

/* Initialise with specific int time and gain values */
Adafruit_TCS34725 tcs = Adafruit_TCS34725(TCS34725_INTEGRATIONTIME_700MS, TCS34725_GAIN_1X);
 

unsigned long delayTime;

void setup() {
    Serial.begin(9600);
    tcs.begin();
    !ccs.begin();
    /*while(!Serial);    // get serial running
    //Serial.println(F("BME280 test"));
    //Serial.println("CCS811 test");

    if (tcs.begin()) {
    //Serial.println("Found sensor");
    } else {
    Serial.println("No TCS34725 found ... check your connections");
    while (1);
    }

    if(!ccs.begin()){
    Serial.println("Failed to start sensor! Please check your wiring.");
    while(1);
  }*/

  // Wait for the sensor to be ready
    while(!ccs.available());
    unsigned status;
    
    // default settings
    status = bme.begin();  
    // You can also pass in a Wire library object like &Wire2
    // status = bme.begin(0x76, &Wire2)
    /*if (!status) {
        Serial.println("Could not find a valid BME280 sensor, check wiring, address, sensor ID!");
        Serial.print("SensorID was: 0x"); Serial.println(bme.sensorID(),16);
        Serial.print("        ID of 0xFF probably means a bad address, a BMP 180 or BMP 085\n");
        Serial.print("   ID of 0x56-0x58 represents a BMP 280,\n");
        Serial.print("        ID of 0x60 represents a BME 280.\n");
        Serial.print("        ID of 0x61 represents a BME 680.\n");
        while (1) delay(10);
    }
    
    Serial.println("-- Default Test --");
    

    Serial.println();*/
    delayTime = 1000;
}


void loop() { 
    printValues();
    delay(delayTime);

//---RGB code
      //float red, green, blue; //taken from the other sketch to transform RGB values
      uint16_t r, g, b, c, colorTemp, lux;
 
      tcs.getRawData(&r, &g, &b, &c);
      //tcs.getRGB(&red, &green, &blue);//taken from the other sketch to transform RGB values
  
    colorTemp = tcs.calculateColorTemperature(r, g, b);
    lux = tcs.calculateLux(r, g, b);
 //-----

    Serial.print("Color Temp: "); Serial.print(colorTemp, DEC); Serial.println(" K ");
    Serial.print("Lux: "); Serial.print(lux, DEC);

    Serial.println(" ");
      if(ccs.available()){
      if(!ccs.readData()){
      Serial.print("CO2: "); Serial.print(ccs.geteCO2()); Serial.println("ppm");
      Serial.print("TVOC: ");
      Serial.println(ccs.getTVOC());
    }
    else{
      Serial.println("ERROR!");
      while(1);
    }
  }
  delay(50);
}


void printValues() { // prints the values for the BME280
    Serial.print("Temperature = "); Serial.print(bme.readTemperature()); Serial.println(" *C");
    Serial.print("Pressure = "); Serial.print(bme.readPressure() / 100.0F);Serial.println(" hPa");
    Serial.print("Approx. Altitude = "); Serial.print(bme.readAltitude(SEALEVELPRESSURE_HPA)); Serial.println(" m");
    Serial.print("Humidity = "); Serial.print(bme.readHumidity()); Serial.println(" %");

    Serial.println();

    
}
