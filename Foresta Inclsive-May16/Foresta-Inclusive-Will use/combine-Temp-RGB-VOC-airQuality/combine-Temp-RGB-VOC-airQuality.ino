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

//https://learn.adafruit.com/pm25-air-quality-sensor/arduino-code
#include <SoftwareSerial.h>
SoftwareSerial pmsSerial(2, 3);

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
    Serial.begin(115200);

        // sensor baud rate is 9600 //PM2.5
        pmsSerial.begin(9600);

    tcs.begin(); //RGB colour sensor
    !ccs.begin(); //Gas sensor
    
    unsigned status;
    status = bme.begin();  //Pressure/Temp sensor

    delayTime = 1000;
    // questions - 1) Why do the sensors come on-line at different times?
    // 2) why does bme.begin need a variable - It is not called anywhere else in the sketch
}

struct pms5003data { //DO NOT UNDERSTAND why not in setup
  uint16_t framelen;
  uint16_t pm10_standard, pm25_standard, pm100_standard;
  uint16_t pm10_env, pm25_env, pm100_env;
  uint16_t particles_03um, particles_05um, particles_10um, particles_25um, particles_50um, particles_100um;
  uint16_t unused;
  uint16_t checksum;
};

struct pms5003data data;


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
    
    
    // why does when I try to change things the printValues gets flagged?
                        // for example I want to put RGB code and GAS code in their own function and call them in 
                        //a similar way - why doesn't this work?

//---RGB code
      uint16_t r, g, b, c, colorTemp, lux;  // unsigned 16 bit integer to hold all values
      tcs.getRawData(&r, &g, &b, &c); // This gets the raw data (not using the RGB colour values converter)
  
      colorTemp = tcs.calculateColorTemperature(r, g, b);
      lux = tcs.calculateLux(r, g, b);
      Serial.print("Color Temp: "); Serial.print(colorTemp, DEC); Serial.println(" K ");
      Serial.print("Lux: "); Serial.print(lux, DEC);//-----
    
//---- For Gas and VOC - CCS811
    Serial.println(" ");
      if(ccs.available()){
      if(!ccs.readData()){
      Serial.print("CO2: "); Serial.print(ccs.geteCO2()); Serial.println("ppm");
      Serial.print("TVOC: "); Serial.println(ccs.getTVOC());
    }
  }//-------
  delay(50);

    if (readPMSdata(&pmsSerial)) {
    // reading data was successful!
    Serial.println();
    Serial.println("---------------------------------------");
    Serial.print("Particles > 0.3um / 0.1L air:"); Serial.println(data.particles_03um);
    Serial.print("Particles > 0.5um / 0.1L air:"); Serial.println(data.particles_05um);
    Serial.print("Particles > 1.0um / 0.1L air:"); Serial.println(data.particles_10um);
    Serial.print("Particles > 2.5um / 0.1L air:"); Serial.println(data.particles_25um);
    Serial.print("Particles > 5.0um / 0.1L air:"); Serial.println(data.particles_50um);
    Serial.print("Particles > 10.0 um / 0.1L air:"); Serial.println(data.particles_100um);
    Serial.println("---------------------------------------");
  }
}

///----------------------particle
boolean readPMSdata(Stream *s) {
  if (! s->available()) {
    return false;
  }
  
  // Read a byte at a time until we get to the special '0x42' start-byte
  if (s->peek() != 0x42) {
    s->read();
    return false;
  }

  // Now read all 32 bytes
  if (s->available() < 32) {
    return false;
  }
    
  uint8_t buffer[32];    
  uint16_t sum = 0;
  s->readBytes(buffer, 32);

  // get checksum ready
  for (uint8_t i=0; i<30; i++) {
    sum += buffer[i];
  }

  /* debugging
  for (uint8_t i=2; i<32; i++) {
    Serial.print("0x"); Serial.print(buffer[i], HEX); Serial.print(", ");
  }
  Serial.println();
  */
  
  // The data comes in endian'd, this solves it so it works on all platforms
  uint16_t buffer_u16[15];
  for (uint8_t i=0; i<15; i++) {
    buffer_u16[i] = buffer[2 + i*2 + 1];
    buffer_u16[i] += (buffer[2 + i*2] << 8);
  }

  // put it into a nice struct :)
  memcpy((void *)&data, (void *)buffer_u16, 30);

  if (sum != data.checksum) {
    Serial.println("Checksum failure");
    return false;
  }
  // success!
  return true;
}

void printValues() { // prints the values for the BME280
    Serial.print("Temperature = "); Serial.print(bme.readTemperature()); Serial.println(" *C");
    Serial.print("Pressure = "); Serial.print(bme.readPressure() / 100.0F);Serial.println(" hPa");
    Serial.print("Approx. Altitude = "); Serial.print(bme.readAltitude(SEALEVELPRESSURE_HPA)); Serial.println(" m");
    Serial.print("Humidity = "); Serial.print(bme.readHumidity()); Serial.println(" %");

    Serial.println();  
}
