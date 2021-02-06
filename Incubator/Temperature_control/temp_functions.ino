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
