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
unsigned long time;
unsigned long previousMillis = 0;


void setup() {
    Serial.begin(9600);
    tcs.begin();
    !ccs.begin();


  // Wait for the sensor to be ready
    while(!ccs.available());
    unsigned status;

    status = bme.begin();  

    delayTime = 800;
}


void loop() { 

    //Serial.print("Time: ");
    time = millis();
    //Serial.println(time);
    unsigned long currentMillis = millis();
    if (currentMillis - previousMillis >= delayTime) {
    previousMillis = currentMillis;
    }

    
    printValues();
    delay(delayTime);

//---RGB code
      uint16_t r, g, b, c, colorTemp, lux;
      tcs.getRawData(&r, &g, &b, &c); // This gets the raw data (not using the RGB colour values converter)
  
    colorTemp = tcs.calculateColorTemperature(r, g, b);
    lux = tcs.calculateLux(r, g, b);//-----

//---- For Gas and VOC - CCS811
    Serial.print("Color Temp: "); Serial.print(colorTemp, DEC); Serial.println(" K ");
    Serial.print("Lux: "); Serial.print(lux, DEC);

    Serial.println(" ");
      if(ccs.available()){
      if(!ccs.readData()){
      Serial.print("CO2: "); Serial.print(ccs.geteCO2()); Serial.println("ppm");
      Serial.print("TVOC: "); Serial.println(ccs.getTVOC());
    }
    else{
      Serial.println("ERROR!");
      while(1);
    }
  }
  //delay(50);
}


void printValues() { // prints the values for the BME280
    Serial.print("Temperature = "); Serial.print(bme.readTemperature()); Serial.println(" *C");
    Serial.print("Pressure = "); Serial.print(bme.readPressure() / 100.0F);Serial.println(" hPa");
    Serial.print("Approx. Altitude = "); Serial.print(bme.readAltitude(SEALEVELPRESSURE_HPA)); Serial.println(" m");
    Serial.print("Humidity = "); Serial.print(bme.readHumidity()); Serial.println(" %");

    Serial.println();

    
}
