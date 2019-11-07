/*
  Blink

  Turns an LED on for one second, then off for one second, repeatedly.

This program blinks the 2 high powered LEDs - headlight, and foil at 2 second intervals
*/

int LED_BLUE=8; //declares pin variables
int LED_RED=7;
int LED_HEADLIGHT=6;
int FOIL=9;


// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  
  
  pinMode(LED_BLUE, OUTPUT); //LED_BLUE  - declares pins as output
  pinMode(LED_RED, OUTPUT); //LED_RED
  pinMode(LED_HEADLIGHT, OUTPUT); //LED_HEADLIGHT
  pinMode(FOIL, OUTPUT); //FOIL

  
}

// the loop function runs over and over again forever
void loop() {
  digitalWrite(LED_BLUE, LOW);  // these leds start high - so sets to low
  digitalWrite(LED_RED, LOW); 

  
  digitalWrite(LED_BLUE, !HIGH);   // turn the LED on (LOW turns these LEDs on - but the ! before the HIGH flips = LOW)
  digitalWrite(LED_RED, !HIGH);   // turn the LED on (LOW turns these LEDs on - but the ! before the HIGH flips = LOW)
  digitalWrite(LED_HEADLIGHT, HIGH);   // turn the LED on (HIGH is the voltage level)
  digitalWrite(FOIL, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(2000);                       // wait for a second
  digitalWrite(LED_BLUE, !LOW);    // turn the LED off by making the voltage !LOW
  digitalWrite(LED_RED, !LOW);    // turn the LED off by making the voltage !LOW
  digitalWrite(LED_HEADLIGHT, LOW);    // turn the LED off by making the voltage LOW
  digitalWrite(FOIL, LOW);    // turn the LED off by making the voltage LOW
  delay(2000);                       // wait for a second
}
