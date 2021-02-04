#include <IRremote.h>

int brightness_veg = 0; //corresponding veg channel brightness value for a lux value found through an equation 
int brightness_veg_old = 0;
int veg_knob_counter = 0; //current veg channel brightness
int delta_veg = 0; //different between the current veg channel brightness and calculated veg 

int brightness_bloom = 0; //corresponding bloom channel brightness value for a lux value found through an equation 
int brightness_bloom_old = 0;
int bloom_knob_counter = 0; //current bloom channel brightness
int delta_bloom = 0; //different between the current bloom channel brightness and calculated bloom 
int light_counter = 0; //indexing through array   

//int lux_values_array[ ] = {0,12,16,40,46,55,60,90,100,0};
int lux_values_array[ ] = {0,212.88586,136.69029,101.5814,70.96886,57.210175,43.963715,25.865286,3.26696,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,12.61423,107.96469,418.1846,998.8024,1931.7765,433.41812,260.35425,168.36841,143.09064,115.127205,57.335003,26.206034,2.2206094}; //randomly generated numbers 
//int lux_values_array[] = {43.963715,25.865286,3.26696,1.0,1.0,1.0,0,3.26696,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,12.61423,107.96469};

int previous_lux_value = 0; //
int new_lux_value = 0; //

void setup() {
  Serial.begin(9600);
  
  Serial.println( "Enter 1 if you are ready to start");
  while(Serial.available() == 0) { }
  int state = Serial.parseInt();     // get the value
  
  if (state == 1) {
  home_position(12,18); //veg,bloom
  power_activate(); }  //turn the lights on 
}

void loop() {

/*shift IO function stuff would go here*/

//this can be used if the data is in a csv
if (light_counter < sizeof(lux_values_array)){
  
  new_lux_value = lux_values_array[light_counter];  
  update_light(new_lux_value,previous_lux_value);
  light_counter ++;
  delay(5000);} //this is here to act like other systems are updating 

else {
  Serial.print("No more values in the array");
  return; }


} // void loop
