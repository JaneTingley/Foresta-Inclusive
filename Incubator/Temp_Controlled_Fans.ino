
#include <Wire.h>
#include "cactus_io_AM2315.h"
AM2315 am2315;
/*
const int threshold = 25;
const int temp_range = 2; // acceptable temperature range from threshold
const int threshold_H = threshold + temp_range; // upper temperature threshold
const int threshold_L = threshold - temp_range; // lower temperature threshold
*/


int threshold_array[] = {22,22,22,22,22};
int array_len = sizeof(threshold_array) / sizeof(threshold_array[0]);


int temp_update_time = 5000;

///////////////////////////////////////////


const byte OC1A_PIN = 11; // fan 1 controlled by pin 9
const byte OC1B_PIN = 12; // fan 2 controlled by pin 10
const word PWM_FREQ_HZ = 25000; //Adjust this value to adjust the frequency
const word TCNT1_TOP = 16000000/(2*PWM_FREQ_HZ);

void setup() {
Serial.begin(9600);
pinMode(13,OUTPUT);

  if (!am2315.begin()) {
     Serial.println("Sensor not found, check wiring & pullups!");
     while (1);
  }

else {
     
  pinMode(OC1A_PIN, OUTPUT);

  TCCR1A = 0;
  TCCR1B = 0;
  TCNT1  = 0;
  
  TCCR1A |= (1 << COM1A1) | (1 << WGM11);
  TCCR1B |= (1 << WGM13) | (1 << CS10);
  ICR1 = TCNT1_TOP;


  pinMode(OC1B_PIN, OUTPUT);
  TCCR1A = 0;
  TCCR1B = 0;
  TCNT1  = 0;
  
  TCCR1A |= (1 << COM1A1) | (1 << WGM11);
  TCCR1B |= (1 << WGM13) | (1 << CS10);
  ICR1 = TCNT1_TOP;

}
}

/////////////////FAN PWM DEFINE DUTY/////////////////

  void setPwmDuty(byte duty) 
{
  OCR1A = (word) (duty*TCNT1_TOP)/100;
}


void setPwmDuty2(byte duty) 

{
  OCR1B = (word) (duty*TCNT1_TOP)/100;
}
///////////////////////////////////////////////////


void loop() {

int i = 0;
while (i < array_len){
        
  int threshold_H =  threshold_array[i] + 2;
  int threshold_L =  threshold_array[i] - 2;
  //Serial.println(threshold_array[i]);
  
 int j = 0;

  while( j < 5)
  {
        am2315.readSensor();
        float temperatureC = am2315.getTemperature_C();
        Serial.print(temperatureC); Serial.println(" *C\t");
      
      
      if ( temperatureC > threshold_H){ 
        temp_high();
        
        Serial.print("temperature is above thresholdH , array temperature is: ");
        Serial.println(threshold_array[i]);
        
        
        /*  digitalWrite(13,LOW); // turn heater off
          Serial.print("Fans on, heater off");
          analogWrite(OC1B_PIN, 200); 
          analogWrite(OC1A_PIN, 200);
        */
      }
      
      else if( temperatureC < threshold_L) {
        temp_low();
        
        Serial.print("temperature is below thresholdL , array temperature is: ");
        Serial.println(threshold_array[i]);
        
        
        /* Serial.println("temp too low ");
        digitalWrite(13,HIGH); // turn heater on
        analogWrite(OC1B_PIN, 0); 
        analogWrite(OC1A_PIN, 0);
        */
      
      }
      
      else{

        
        temp_okay();
      
        Serial.print("temperature is okay , array temperature is: ");
        Serial.println(threshold_array[i]);
        
        /*
        Serial.println("temp Okay :) ");
        digitalWrite(13,LOW); // turn heater off
        analogWrite(OC1B_PIN, 0); 
        analogWrite(OC1A_PIN, 0);
        */
      }
       delay(1000);
       j = j + 1;

 }
  
          i = i + 1;
}

}
