/*These functions are used to send IR pulses to the light */

//turns light on OR off
void power_activate(){
  IrSender.sendNECRaw(0xBA45FF00, 1); //power
  delay(5000);
}

//activates the veg channel 
void veg_channel_activate(){
 IrSender.sendNECRaw(0xE916FF00, 1);
}

//activates the bloom channel 
void bloom_channel_activate(){
  IrSender.sendNECRaw(0xF20DFF00, 1);
}

//increases brightness of either channel
void increase_brightness(int increment_increase){
  for (int i = 0 ; i < increment_increase ; i++)
    { 
   IrSender.sendNECRaw(0xBF40FF00, 1);
    }
}

//decreases brightness of either channel
void decrease_brightness (int increment_decrease){
  for (int i = 0 ; i < increment_decrease ; i++)
    { 
    IrSender.sendNECRaw(0xE619FF00, 1);
    }
}



/*These functions are used to convert the lux value into brightness values */

//brightness profile for 0-100lux 
void lux_0_100(int lux_value,int &brightness_veg_100, int &brightness_bloom_100) {
  brightness_bloom_100 = 0; 
  brightness_veg_100 = 0.2*lux_value; //light brightness value 
}

//brightness profile for 100-200lux 
void lux_100_200(int lux_value, int &brightness_veg_200, int &brightness_bloom_200) {
  brightness_veg_200 = 0.1*lux_value + 10;
  brightness_bloom_200 = 0.26*lux_value + -22;//light brightness value
}

//brightness profile for 200-600lux 
void lux_200_600(int lux_value, int &brightness_veg_600, int &brightness_bloom_600) {
  brightness_veg_600 = 0.1*lux_value + 10;
  brightness_bloom_600 = 0.1*lux_value + 10 ;//light brightness value
}

//brightness profile for 600-1000lux 
void lux_600_1000(int lux_value, int &brightness_veg_1000, int &brightness_bloom_1000) {
  brightness_veg_1000 =  70;
  brightness_bloom_1000 = 58 + 0.02*lux_value ;//light brightness value
}

//if brightness is greaterthan 2000
void lux_1000(int lux_value, int &brightness_veg_1000, int &brightness_bloom_1000) {
  brightness_veg_1000 = 70; 
  brightness_bloom_1000 = 80; //light brightness value
}




/*update_light,channel_brightness,comparing_new_old are the 3 key logic functions  */

void update_light(int &new_lux, int &old_lux) {

   if (new_lux<= 100){
    
    lux_0_100(new_lux, brightness_veg, brightness_bloom); } //use equation to find knob brightness value

  
    else if ((new_lux > 100) && (new_lux <= 200)) {
   
    lux_100_200(new_lux, brightness_veg, brightness_bloom); } //use equation to find knob brightness value

    else if ((new_lux > 200) && (new_lux <= 600)) {
    lux_200_600(new_lux, brightness_veg, brightness_bloom);} //use equation to find knob brightness value
    
    else if ((new_lux > 600) && (new_lux <= 1000)) {
    lux_600_1000(new_lux, brightness_veg, brightness_bloom); //use equation to find knob brightness value
    }
    
    else { 
    lux_1000(new_lux, brightness_veg, brightness_bloom); } //if lux value is greater than 1000 
    
     veg_channel_activate();
     delay(1000);
     channel_brightness(new_lux,old_lux,veg_knob_counter,brightness_veg,delta_veg);  //this will find if the lux value is increasing or decreasing and update it 

     bloom_channel_activate();   //activate bloom channel

     delay(1000);
     
     channel_brightness(new_lux, old_lux,bloom_knob_counter,brightness_bloom,delta_bloom);   //this will find if the lux value is increasing or decreasing and update it 

        
     old_lux = new_lux; //overrides the old lux and gets ready for incoming updated lux value
     brightness_bloom_old = brightness_bloom; 
     brightness_veg_old = brightness_veg;  
 
  Serial.print("Lux: ");
  Serial.println(new_lux_value);
  Serial.print("v brightness value: ");
  Serial.println(brightness_veg);
  Serial.print("v delta: ");
  Serial.println(delta_veg);
  Serial.print("v counter: ");
  Serial.println(veg_knob_counter);
  Serial.print("b brightness value: ");
  Serial.println(brightness_bloom);
  Serial.print("b delta: ");
  Serial.println(delta_bloom); 
  Serial.print("b counter: ");
  Serial.println(bloom_knob_counter);
} 

//this will find if the lux value is increasing or decreasing 
void channel_brightness(int new_lux, int old_lux, int &knob_counter, int &brightness, int &delta) {
    
    if (old_lux == 0) {
      delta = brightness;
      knob_counter = brightness;
      increase_brightness(delta);} 

    else if (new_lux > old_lux) { 
      delta = brightness - knob_counter; //increasing lux values   
      increase_brightness(delta); 
      knob_counter = brightness;} //update counter value 
  
    else {
      delta = knob_counter - brightness; //decreasing lux values
      decrease_brightness(delta);
      knob_counter = brightness;} //update counter value  
}


//compares new and old lux values, sees if they are the similar 
int comparing_new_old(int new_lux, int old_lux) {
  
  if (new_lux == old_lux) {
    return  1; 
  }

  else {
    return 0; 
  }
}


void home_position(int veg, int bloom) {

bloom_channel_activate();
decrease_brightness(bloom); 
    
veg_channel_activate();
decrease_brightness(veg); 
power_activate(); //turn off light

}
