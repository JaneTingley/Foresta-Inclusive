#include <Wire.h>


const byte OC1A_PIN = 11; 
const byte OC1B_PIN = 12; 
const byte OC4B_PIN = 7; 
const byte OC4A_PIN = 6;
const byte OC3A_PIN = 5;
const byte OC4C_PIN = 8;
const byte OC3B_PIN = 2;
const byte OC3C_PIN = 3;

const word PWM_FREQ_HZ = 25000; //Adjust this value to adjust the frequency
const word TCNT1_TOP = 16000000/(2*PWM_FREQ_HZ);

float speed_array[ ] = {0,32.5,13.69029,10.5814,63, 45, -12, -0.1, 0.3, 7.96886,7.210175,3.9, 4, 12, 25, 30, 31, 25, 6, 8, 9, 14, 23.56, 25.45, 3.2, 0.8, 21, 5, 31, 15};

float max_speed = 32.4; // Determines sensitivity of plant movement, lower = more sensitive
float min_speed = 0.5;



int wind_counter = 0;
const unsigned long W_update_value = 8000; //every 8 seconds 
unsigned long W_previousTime_update = 0; 
 

////////////////////////////////////////////


void setup() {
Serial.begin(9600);
pinMode(13,OUTPUT);

 
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


  pinMode(OC3A_PIN, OUTPUT);
  TCCR3A = 0;
  TCCR3B = 0;
  TCNT3  = 0;
  
  TCCR3A |= (1 << COM1A1) | (1 << WGM11);
  TCCR3B |= (1 << WGM13) | (1 << CS10);
  ICR3 = TCNT1_TOP;
  
  pinMode(OC3B_PIN, OUTPUT);
  TCCR3A = 0;
  TCCR3B = 0;
  TCNT3  = 0;
  
  TCCR3A |= (1 << COM1A1) | (1 << WGM11);
  TCCR3B |= (1 << WGM13) | (1 << CS10);
  ICR3 = TCNT1_TOP;

  
   
  pinMode(OC3C_PIN, OUTPUT);
  TCCR3A = 0;
  TCCR3B = 0;
  TCNT3  = 0;
  
  TCCR3A |= (1 << COM1A1) | (1 << WGM11);
  TCCR3B |= (1 << WGM13) | (1 << CS10);
  ICR3 = TCNT1_TOP;

  
  pinMode(OC4A_PIN, OUTPUT);
  TCCR4A = 0;
  TCCR4B = 0;
  TCNT4  = 0;
  
  TCCR4A |= (1 << COM1A1) | (1 << WGM11);
  TCCR4B |= (1 << WGM13) | (1 << CS10);
  ICR4 = TCNT1_TOP;
  

  pinMode(OC4B_PIN, OUTPUT);
  TCCR4A = 0;
  TCCR4B = 0;
  TCNT4  = 0;
  
  TCCR4A |= (1 << COM1A1) | (1 << WGM11);
  TCCR4B |= (1 << WGM13) | (1 << CS10);
  ICR4 = TCNT1_TOP;

  
  pinMode(OC4C_PIN, OUTPUT);
  TCCR4A = 0;
  TCCR4B = 0;
  TCNT4  = 0;
  
  TCCR4A |= (1 << COM1A1) | (1 << WGM11);
  TCCR4B |= (1 << WGM13) | (1 << CS10);
  ICR4 = TCNT1_TOP;




  
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




void setPwmDuty3(byte duty) 

{
  OCR3A = (word) (duty*TCNT1_TOP)/100;
}



void setPwmDuty4(byte duty) 

{
  OCR3B = (word) (duty*TCNT1_TOP)/100;
}



void setPwmDuty5(byte duty) 

{
  OCR3C = (word) (duty*TCNT1_TOP)/100;
}


void setPwmDuty6(byte duty) 

{
  OCR4A = (word) (duty*TCNT1_TOP)/100;
}



void setPwmDuty7(byte duty) 

{
  OCR4B = (word) (duty*TCNT1_TOP)/100;
}



void setPwmDuty8(byte duty) 

{
  OCR4C = (word) (duty*TCNT1_TOP)/100;
}
///////////////////////////////////////////////////






void loop() {
  
 unsigned long W_currentTime = millis();

  if (W_currentTime - W_previousTime_update >= W_update_value) {
    W_previousTime_update = W_currentTime;

    float speed_array_val = 0;

    if (speed_array[wind_counter] > max_speed){
      speed_array_val = max_speed;
    }

    else if (speed_array[wind_counter] < min_speed){
      speed_array_val = min_speed;
    }

    else {
      speed_array_val = speed_array[wind_counter];
    }
    
    int rpm = (((speed_array_val- min_speed)/(max_speed - min_speed))*145)+ 110;

  analogWrite(OC3A_PIN, rpm); 
  analogWrite(OC3B_PIN, rpm);
  analogWrite(OC3C_PIN, rpm); 
  analogWrite(OC4A_PIN, rpm);
  analogWrite(OC4B_PIN, rpm); 
  analogWrite(OC4C_PIN, rpm);

    
    wind_counter ++; //get new heat value 
  }

}
