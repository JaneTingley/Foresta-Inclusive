/*
  Serial2LEDs - Matt Wright Nov 2015

  Accept serial data (from Max) and display each byte via 8 LEDs connected
  to digital I/O pins 2 through 9.

 */


// the setup function runs once when you press reset or power the board
void setup() {

  // Be ready to read from serial port
  Serial.begin(115200);
  
  // initialize digital pins 2-9 as an output.
  for (int i = 2; i<=9; ++i) {
    pinMode(i, OUTPUT);
  }

  // also the on-board LED
  pinMode(13, OUTPUT);
}


// the loop function runs over and over again forever
void loop() {
  int byte = Serial.read();

  if (byte > -1) {
    int anyBitOn = LOW;
    for (int i=0; i<8; ++i) {
      int bit = (1<<i) & byte;
      if (bit) anyBitOn = HIGH;
      int bitvalue = bit ? HIGH : LOW;
      digitalWrite(i+2, bitvalue);   // turn the LED on (HIGH is the voltage level)
    }
    digitalWrite(13, anyBitOn);
  }
}
