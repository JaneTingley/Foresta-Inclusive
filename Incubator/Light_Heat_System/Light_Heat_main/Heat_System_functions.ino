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

void temperature_update(int &threshold_H, int &threshold_L) {
  
  //am2315.readSensor(); dont think its necessary? 
  
  float temperature_C = am2315.readTemperature();
  //Serial.print(temperatureC); Serial.println(" *C\t");
      
   if (temperature_C > threshold_H){ 
        temp_high();
        
        //Serial.print("temperature is above thresholdH , array temperature is: ");
        //Serial.println(threshold_array[i]);
        
        /*  digitalWrite(13,LOW); // turn heater off
          Serial.print("Fans on, heater off");
          analogWrite(OC1B_PIN, 200); 
          analogWrite(OC1A_PIN, 200);
        */
      }
      
   else if( temperature_C < threshold_L) {
       temp_low();
        
        //Serial.print("temperature is below thresholdL , array temperature is: ");
        //Serial.println(threshold_array[i]);
        /* Serial.println("temp too low ");
        digitalWrite(13,HIGH); // turn heater on
        analogWrite(OC1B_PIN, 0); 
        analogWrite(OC1A_PIN, 0);
        */
      
      }
      
   else{
        temp_okay();
        //Serial.print("temperature is okay , array temperature is: ");
        //Serial.println(threshold_array[i]);
        
        /*
        Serial.println("temp Okay :) ");
        digitalWrite(13,LOW); // turn heater off
        analogWrite(OC1B_PIN, 0); 
        analogWrite(OC1A_PIN, 0);
        */
      }
  }

//if ( temperatureC > threshold_H){ 
 
 void temp_high(){ 
  digitalWrite(13,LOW); // turn heater off
  Serial.print("Fans on, heater off");
  analogWrite(OC1B_PIN, 200); 
  analogWrite(OC1A_PIN, 200);
 }

//else if( temperatureC < threshold_L) 
void temp_low(){
  Serial.println("temp too low ");
  digitalWrite(13,HIGH); // turn heater on
  analogWrite(OC1B_PIN, 0); 
  analogWrite(OC1A_PIN, 0);
}

void temp_okay(){
  Serial.println("temp Okay :) ");
  digitalWrite(13,LOW); // turn heater off
  analogWrite(OC1B_PIN, 0); 
  analogWrite(OC1A_PIN, 0);
  
}
