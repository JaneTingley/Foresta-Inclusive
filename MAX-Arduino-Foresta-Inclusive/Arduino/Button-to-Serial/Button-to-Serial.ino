const int buttonPin = 2;  // push button pin
const int ledPin = 13;  //uno board led on pin 13

//variables
int buttonState = 0;  // current state of button;
int lastButtonState = 0; // previous button state
int randVal = 0; // random number to be set

void setup() {
  // put your setup code here, to run once:
  pinMode(buttonPin, INPUT); // set button pin as input
  pinMode(ledPin, OUTPUT); // set LED pin as pitput
  Serial.begin (115200);  // serial
}

void loop() {
  // put your main code here, to run repeatedly:
  randVal = random(1000); // set random $
  buttonState = digitalRead(buttonPin); // read pin 2

  //compare button state against the previous
  if (buttonState != lastButtonState){

    if (buttonState == HIGH){ // if the state has changed don't do anything
      
    }else{
      Serial.println (randVal);
    }
    delay(50);
  }
  lastButtonState = buttonState;
} 


/*Serial.print (buttonPin);
    lastButtonState = buttonState;*/
