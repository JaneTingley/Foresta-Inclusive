/*
  Blink

  Turns an LED on for one second, then off for one second, repeatedly.

This program blinks the 2 high powered LEDs - headlight, and foil at 2 second intervals
*/

int LED_WHITE=8; //declares pin variables - in this case white
int LED_AMBER=7; // in this case amber
int LED_HEADLIGHT=6;
int FOIL=9;


// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  
  
  pinMode(LED_WHITE, OUTPUT); //LED_WHITE  - declares pins as output
  pinMode(LED_AMBER, OUTPUT); //LED_AMBER
  pinMode(LED_HEADLIGHT, OUTPUT); //LED_HEADLIGHT
  pinMode(FOIL, OUTPUT); //FOIL

  
}

// the loop function runs over and over again forever
void loop() {
  digitalWrite(LED_WHITE, LOW);  // these leds start high - so sets to low
  digitalWrite(LED_AMBER, LOW); 

  
  digitalWrite(LED_WHITE, LOW);   // turn the LED on 
  digitalWrite(LED_AMBER, HIGH);   // keep the LED off 
  digitalWrite(LED_HEADLIGHT, LOW);   // turn off headlight
  digitalWrite(FOIL, HIGH);   // turn high = clear
  delay(10000);                       // wait for a second
  digitalWrite(FOIL, LOW);    // turn the foil low = opaque
  delay(4000);                       // wait for a second
  
  digitalWrite(LED_WHITE, HIGH);    // turn the LED off 
  digitalWrite(LED_AMBER, LOW);    // turn the LED on 

  delay(10000);                       // wait for a second

  digitalWrite(LED_HEADLIGHT, HIGH);    // turn on headlight

  delay(5000); 
}
