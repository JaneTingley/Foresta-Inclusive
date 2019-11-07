// Define the pin numbers
int motorPin1 = 6;
int motorPin2 = 7;

void setup() {
  // Set the pin modes of the above IO pins to OUTPUT
  pinMode(motorPin1, OUTPUT);
  pinMode(motorPin2, OUTPUT);
}

void loop() {
  // Turn the motor in one direction
  digitalWrite(motorPin1, LOW); //close
  digitalWrite(motorPin2, HIGH);

  delay (5000);

  digitalWrite(motorPin1, HIGH); //open
  digitalWrite(motorPin2, LOW);

  delay (5000);
}
