int pressure = A0;
int flex = A1;
int pot = A2; //placeholder for sharpe value


void setup ()

{

Serial.begin (9600); // Begin Function

pinMode (A0,INPUT); // Initializing pressure sensor as input
pinMode (A1,INPUT); // Initializing Flex sensor as input
pinMode (A2,INPUT); // Initializing Sharpe sensor as input
}

void loop () 
{

pressure = analogRead (A0); // Reading sensor values
flex = analogRead (A1); // Reading sensor values
pot = analogRead (A2); // Reading sensor values

Serial.print ("pressure value = ");
Serial.println (pressure); // Printing Sensor value on Serial monitor
delay (500);

Serial.print ("flex value = ");
Serial.println (flex); // Printing Sensor value on Serial monitor
delay (500);

Serial.print ("pot value = ");
Serial.println (pot); // Printing Sensor value on Serial monitor

delay (500);

}
