int settings[3] = {0, 0, 0};

void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);
}

void loop() {
  if (Serial.available() >= 3)
  {
  // put your main code here, to run repeatedly:

settings [0] = Serial.read() ;
settings [1] = Serial.read() ;
settings [2] = Serial.read() ;

  Serial.print("Reading 1 = ");
  Serial.println(settings [0]);
  Serial.print("Reading 2 = ");
  Serial.println(settings [1]);
  Serial.print("Reading 3 = ");
  Serial.println(settings [2]);     

  }
}
