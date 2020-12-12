/*
Beta, Beta, Beta, Beta, Beta, Beta, Beta, Beta, Beta, Beta, Beta, Beta, Beta, Beta 

Shared APRIL 2012 by Lasse Vestergaard <lassesvestergaard@gmail.com>

The protocol for communicating with this sketch is:

SERIAL INPUT:
  - set pin state (p) og set pin value (v)
    - When setting a pin state you can write 0 (input),1 (output),2 (pwm)
  - set pin number
  - set value
  - Example: [p 3 2] & [v 3 128] == Pin 3 is set to be pwm and addressed with 50/50 duty cycle (medium "speed")
  (just send as char values from any program that can communicate with serial ports ex. Max/MSP)
    - You´ll need "[" and "]" to start and end requests.

SERIAL OUTPUT:    
  - pin number
  - value
  - Example: 7 0 == Pin 7 is set to receive a digital input (a carriage return is send to end request.)
  - The board will only output through serial if an Arduino port is set to input.
  
*/

unsigned long sendtime;

int portregister[]={1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1};
String sample="";
String explodedSample[3];

void setup(){
  sendtime=millis();
  Serial.begin(57600);
}

void loop(){
    while(Serial.available()>0){
      char c=(char)Serial.read();
      if(c == '[')
         sample="";
       else if(c == ']'){
         explodeString(sample);
         if(explodedSample[0].equalsIgnoreCase("v")){
           setPinValue(convertStringToInt(explodedSample[1]),convertStringToInt(explodedSample[2]));
         }
         else if(explodedSample[0].equalsIgnoreCase("p")){
           setPinState(convertStringToInt(explodedSample[1]),convertStringToInt(explodedSample[2]));
         }
       }
       else
         sample+=c;
    }
 
 if(millis()>sendtime+5){
   readSendInput();
   sendtime=millis();
 }
 
}

void readSendInput(){
  for(int i=0;i<18;i++){
    if(portregister[i]==0){
      if(i<12){
        Serial.print(i+2);
        Serial.print(" ");
        Serial.println(digitalRead(i+2));
      }
      else{
        Serial.print(i+2);
        Serial.print(" ");
        Serial.println(analogRead(i+2));
      }
    }
  }
}

void setPinState(int pin, int pinState){
  portregister[pin-2]=pinState;
    if(pinState==2)
      pinState=1;
  pinMode(pin, pinState);
}

void setPinValue(int pin, int val){
  int pinState=portregister[pin-2];
  if(pinState==1){
    digitalWrite(pin,val);
  }
  else if(pinState==2){
    analogWrite(pin,val);
  }
}


/***********************************/
/*        HELPER FUNCTIONS         */
/***********************************/

void explodeString(String s){
  String tem="";
  int tempointer=0;
  
  for(int i=0;i<s.length();i++){
    if(s[i] == ' '){
      explodedSample[tempointer++]=tem;
      tem="";
    }
    else
      tem+=s[i];
  }
  explodedSample[2]=tem;
}

int convertStringToInt(String s){
  char test[s.length()+1];
  s.toCharArray(test, sizeof(test));
  return atoi(test);
}
