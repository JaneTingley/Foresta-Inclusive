// This patch corresponds to Max patch "Max-to-Arduino"
//simply receives a single value through Serial

const int led = 2; // onboard LED

int value;

void setup() {
  // put your setup code here, to run once:
  pinMode (led, OUTPUT); // sets pin to output

  //open serial port
  Serial.begin(9600); // begin the serial
}

void loop() {
  // checks to see if there is info on the serial port
  if (Serial.available()){
    //max is sending packets of info
    // space is seperator so we need to store each value
    value= Serial.read();
    //Serial.println (value);

    //led is on or off
    digitalWrite(led, value);
  }
}
