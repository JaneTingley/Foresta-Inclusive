//HEAT SYSTEM SETUP 
#include <Wire.h>
#include <Adafruit_AM2315.h>
Adafruit_AM2315 am2315;

//LIGHT SYSTEM 
#include <IRremote.h>


//HEAT SYSTEM SETUP 
int heat_counter = 0;
int threshold_array[] = {22,22,22,22,22};
int array_len = sizeof(threshold_array) / sizeof(threshold_array[0]); //length of array 

const unsigned long H_read = 60000; //every 1 minute 
const unsigned long H_update_value = 300000; //every 5 minute 
unsigned long H_previousTime_read = 0; 
unsigned long H_previousTime_update = 0; 


const byte OC1A_PIN = 11; // fan 1 controlled by pin 9
const byte OC1B_PIN = 12; // fan 2 controlled by pin 10
const word PWM_FREQ_HZ = 25000; //Adjust this value to adjust the frequency
const word TCNT1_TOP = 16000000/(2*PWM_FREQ_HZ);


//LIGHT SYSTEM SETUP
int brightness_veg = 0; //corresponding veg channel brightness value for a lux value found through an equation 
int brightness_veg_old = 0;
int veg_knob_counter = 0; //current veg channel brightness
int delta_veg = 0; //different between the current veg channel brightness and calculated veg 

int brightness_bloom = 0; //corresponding bloom channel brightness value for a lux value found through an equation 
int brightness_bloom_old = 0;
int bloom_knob_counter = 0; //current bloom channel brightness
int delta_bloom = 0; //different between the current bloom channel brightness and calculated bloom 
int light_counter = 0; //indexing through array   

int lux_values_array[ ] = {0,212.88586,136.69029,101.5814,70.96886,57.210175,43.963715,25.865286,3.26696,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,12.61423,107.96469,418.1846,998.8024,1931.7765,433.41812,260.35425,168.36841,143.09064,115.127205,57.335003,26.206034,2.2206094}; //randomly generated numbers 

int previous_lux_value = 0; //
int new_lux_value = 0; //

const unsigned long L_update = 10000; //every 10 sec read a new lux value  
unsigned long L_previousTime_update = 0; 
bool L_update_brightness = true;



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


  Serial.println( "Enter 1 if you are ready to start");
  while(Serial.available() == 0) { }
  int state = Serial.parseInt();     // get the value
  
  if (state == 1) {
  home_position(12,18); //veg,bloom
  power_activate(); }  //turn the lights on 
}


void loop() {

  if (L_update_brightness) {
    new_lux_value = lux_values_array[light_counter];  
    update_light(new_lux_value,previous_lux_value);
    L_update_brightness = !L_update_brightness; //make it false and wont update until a new lux value is fed into system 
  }

  unsigned long L_currentTime = millis();
  
  if (L_currentTime - L_previousTime_update >= L_update ) {
    light_counter ++; //get a new lux value 
    L_previousTime_update = L_currentTime; 
    L_update_brightness = !L_update_brightness; //make it true and update brightness 
  }


 int threshold_H =  threshold_array[heat_counter] + 2;
 int threshold_L =  threshold_array[heat_counter] - 2;

 unsigned long H_currentTime = millis();

  //this will read the temp in incubator and update every 1 min
  if (H_currentTime - H_previousTime_read >= H_read){
    temperature_update(threshold_H, threshold_L); 
    H_previousTime_read = H_currentTime; 
  }
  
  //this will move to the next index when 5 min is up 
  if (H_currentTime - H_previousTime_update >= H_update_value) {
    H_previousTime_update = H_currentTime; 
    heat_counter ++; //get new heat value 
  }
  
  
}
