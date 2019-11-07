int temperature = A0;
int light = A1;
int moisture = A2; //placeholder for sharpe value
int LEDFEED = 8;    //Led Light on/off

void setup ()

{

Serial.begin (9600); // Begin Function

pinMode (A0,INPUT); // Initializing pressure sensor as input
pinMode (A1,INPUT); // Initializing Flex sensor as input
pinMode (A2,INPUT); // Initializing Sharpe sensor as input
pinMode(LEDFEED, OUTPUT); //Set LED pin as output
}

void loop () 
{

temperature = analogRead (A0); // Reading sensor values
light = analogRead (A1); // Reading sensor values
moisture = analogRead (A2); // Reading sensor values

Serial.print ("temp value = ");
Serial.println (temperature); // Printing Sensor value on Serial monitor
//delay (500);

Serial.print ("light value = ");
Serial.println (light); // Printing Sensor value on Serial monitor
//delay (500);

Serial.print ("moisture value = ");
Serial.println (moisture); // Printing Sensor value on Serial monitor

//delay (500);

  if (moisture >100) {
    digitalWrite(LEDFEED, HIGH);//turn D8 "On"
  }
  else {
    digitalWrite(LEDFEED, LOW);//turn D8 "Off"
  }
  delay (100);

}
