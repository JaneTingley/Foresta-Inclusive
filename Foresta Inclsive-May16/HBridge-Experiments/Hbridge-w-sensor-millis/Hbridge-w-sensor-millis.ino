// Define the pin numbers
int motorPin1 = 6;
int motorPin2 = 7;
const int flex1 = A0;  // flex sensor - can be replace by any sensor
unsigned long lastMillis = 0;  // counting time
//long interval = 5000; // this is the pause to keep motor open

void setup() {
  Serial.begin (9600); // Begin Function
  
  // Set the pin modes of the above IO pins to OUTPUT
  pinMode(motorPin1, OUTPUT);
  pinMode(motorPin2, OUTPUT);
  pinMode (A0,INPUT); // Initializing Flex sensor as input
}

void loop() {

  int temp1 = analogRead (A0); // Reading sensor values
  Serial.print ("Flex1 value = ");
  Serial.println (temp1); // Printing Sensor value on Serial monitor
  
  if (temp1>200) {
  // Turn the motor in one direction
  digitalWrite(motorPin1, LOW); //close
  digitalWrite(motorPin2, HIGH);

  } 

  else{
  digitalWrite(motorPin1, HIGH); //open
  digitalWrite(motorPin2, LOW);
  //lastMillis = millis();
  delay (5000);
  }
}
