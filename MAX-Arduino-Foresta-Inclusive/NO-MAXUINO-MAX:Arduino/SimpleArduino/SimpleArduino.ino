
int red = 9;  // declare pins for RGB
int green = 10;
int blue = 11;

int motor1 = 5; // declare motor pin

int s1 = 0;  // declare sensor pins
int s2 = 0;
int s3 = 0;

void setup() {

  Serial.begin(19200);
  
   // declare pin to be an output:
  pinMode(red, OUTPUT);
  pinMode(green, OUTPUT);
  pinMode(blue, OUTPUT);
  pinMode(motor1, OUTPUT);

  pinMode(A1, INPUT);
  pinMode(A2, INPUT);
  pinMode(A3, INPUT);

  analogWrite(red, 255);
  analogWrite(green, 255);
  analogWrite(blue, 255);

}



void loop() {
  
  s1 = analogRead(A1);
  s2 = analogRead(A2);
  s3 = analogRead(A3);

   Serial.print("s1 ");
   Serial.println(s1);
  
   Serial.print("s2 ");
   Serial.println(s2);
  
   Serial.print("s2 ");
   Serial.println(s2);
   
  

  if (Serial.available() > 0){         // Check serial buffer for characters

/* this is an ASCII decoder. It receives the ascii number from the MAX sketch - say it is 147r
147 R value followed by thr r.
The decoder receives the first char v=1, which is the first char from the ascii code
translates it from a char to an actual integer. so v= '1' turns into v=1
Then sets v to the next char - v='14', then the next v='147', and then v='147r'.

Once the V = 147r - V is set to 0 and it jmps to the 'case' r, which sets brightness of the R

You can even do this for the motor.
 */
    char ch = Serial.read();  
    static uint16_t v = 0;

    switch (ch){
    case '0'...'9':
      v = v * 10 + ch - '0';
      break;

      
      // set pin number, write
    case 'r': 
      // set the brightness of pin 9:
     analogWrite(red, v);
    
      v = 0;
      break;

            // set pin number, write
    case 'g': 
      // set the brightness of pin 10:
     analogWrite(green, v);
    
      v = 0;
      break;

      // set pin number, write
    case 'f': 
      // set the motor pin to high or low:
      if (v== 0){
        digitalWrite(motor1, LOW); // v should be 0 or 1
      } else {
        digitalWrite(motor1, HIGH); // v should be 0 or 1
      }
      v = 0;
      break;

      
      // set pin number, write
    case 'x': 
    Serial.print("hi ");
      Serial.println(v);
    
      v = 0;
      break;
    }
  }

}
