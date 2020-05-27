/* FSR testing sketch. 
 
Connect one end of FSR to 5V, the other end to Analog 0.
Then connect one end of a 10K resistor from Analog 0 to ground
Connect LED from pin 11 through a resistor to ground 
 
For more information see www.ladyada.net/learn/sensors/fsr.html */
 
int fsrAnalogPin = 0; // FSR is connected to analog 0
int fsrReading;      // the analog reading from the FSR resistor divider
int LEDFEED = 8;    //Led Light on/off

 
void setup(void) {
  Serial.begin(9600);   // We'll send debugging information via the Serial monitor
  pinMode(LEDFEED, OUTPUT); //Set LED pin as output
}
 
void loop(void) {
  fsrReading = analogRead(fsrAnalogPin);
  Serial.print("Analog reading = ");
  Serial.println(fsrReading);

  if (fsrReading >300) {
    digitalWrite(LEDFEED, HIGH);//turn D8 "On"
  }
  else {
    digitalWrite(LEDFEED, LOW);//turn D8 "Off"
  }
  delay (100);
}
