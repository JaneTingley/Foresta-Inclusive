#include <SPI.h>

//RGB
#include <Wire.h>
#include "Adafruit_TCS34725.h"


// GAS/VOC
#include "Adafruit_CCS811.h"
#include <SparkFun_VL6180X.h>


#include <Adafruit_Sensor.h>// BME - Temp/pressure sensor
#include <Adafruit_BME280.h>// BME - Temp/pressure sensor

#define BME_SCK 13// BME - Temp/pressure sensor
#define BME_MISO 12// BME - Temp/pressure sensor
#define BME_MOSI 11// BME - Temp/pressure sensor
#define BME_CS 10// BME - Temp/pressure sensor

#define SEALEVELPRESSURE_HPA (1013.25)// BME - Temp/pressure sensor

unsigned long lastMillis = 0;

Adafruit_TCS34725 tcs = Adafruit_TCS34725(TCS34725_INTEGRATIONTIME_700MS, TCS34725_GAIN_1X);
Adafruit_CCS811 ccs;  //CCS811 code - Co2 and TVOC
Adafruit_BME280 bme; // I2C - BME - Temp/pressure sensor

#define VL6180X_ADDRESS 0x29

VL6180xIdentification identification;
VL6180x sensor(VL6180X_ADDRESS);

void setup() {
  
  Serial.begin(115200);
  while (!Serial && millis() < 4000);
  delay(100);
  Serial.println("\nHello RGB/VOC");

//  sensor.getIdentification(&identification); // Retrieve manufacture info from device memory
//  printIdentification(&identification); // Helper function to print all the Module information

  bool rgb_ok = true;
  bool ccs_ok = false;
  bool bme_ok = false;
  bool vl_ok = false;
  while (!rgb_ok || !vl_ok || !ccs_ok || !bme_ok) {
    if (!rgb_ok) {
      if (!(rgb_ok = tcs.begin())) Serial.println("Unable to connect to RGB sensor");
      else Serial.println("RGB sensor OK");
    }
    if (!vl_ok) {
      if (!(vl_ok = (sensor.VL6180xInit() == 0))) Serial.println("Unable to connect to VL sensor");
      else Serial.println("VL sensor OK");
    }
    if (!ccs_ok) {
      if (!(ccs_ok = ccs.begin())) Serial.println("Unable to connect to CCS sensor");
      else Serial.println("CCS sensor OK");
    }
    if (!bme_ok) {  //Pressure/Temp
      if (!(bme_ok = bme.begin())) Serial.println("Unable to connect to BME sensor");
      else Serial.println("BME sensor OK");
    }
    delay(500);
  }

  sensor.VL6180xDefautSettings(); //Load default settings to get started.

}

void loop() {
  
  unsigned long currentTime = millis();
  if (currentTime - lastMillis > 1000) {
    lastMillis = currentTime;

/*
    float red, green, blue; //taken from the other sketch to transform RGB values
    uint16_t r, g, b, c, colorTemp, lux;
    tcs.getRawData(&r, &g, &b, &c);
    Serial.print("RGBC: "); Serial.print(r); Serial.print(" "); Serial.print(g); Serial.print(" "); Serial.print(b); Serial.print(" "); Serial.print(c); Serial.println();
    tcs.getRGB(&red, &green, &blue);//taken from the other sketch to transform RGB values
    Serial.print("RGB: "); Serial.print(red); Serial.print(" "); Serial.print(green); Serial.print(" "); Serial.print(blue); Serial.println();
//    colorTemp = tcs.calculateColorTemperature(r, g, b);
//    lux = tcs.calculateLux(r, g, b);
//    Serial.print("Color Temp: "); Serial.print(colorTemp, DEC); Serial.println(" K ");
//    Serial.print("Lux: "); Serial.println(lux, DEC);
*/
    Serial.print("Ambient Light Level (Lux) = ");
    Serial.println( sensor.getAmbientLight(GAIN_1) );
    Serial.print("Distance measured (mm) = ");
    Serial.println( sensor.getDistance() ); 
      //Gas/VOC sensor
    if(ccs.available()){
      if(!ccs.readData()){ 
        Serial.print("C02: "); Serial.print(ccs.geteCO2()); Serial.println("");
        Serial.print("VOC: "); Serial.print(ccs.getTVOC()); Serial.println("");
      }
    }

        //BME sensor - Humidity/temp/pressure
    Serial.print("Temp-degree: "); Serial.print(bme.readTemperature()); Serial.println("");
    Serial.print("Pressure-hPa: "); Serial.print(bme.readPressure()); Serial.println("");
    Serial.print("Alt: "); Serial.print(bme.readAltitude(SEALEVELPRESSURE_HPA)); Serial.println("");
    Serial.print("Humid: "); Serial.print(bme.readHumidity()); Serial.println("");    
  }
}
