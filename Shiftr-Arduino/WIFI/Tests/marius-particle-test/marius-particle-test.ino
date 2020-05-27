struct pms5003data { //particulate
  uint16_t framelen;
  uint16_t pm10_standard, pm25_standard, pm100_standard;
  uint16_t pm10_env, pm25_env, pm100_env;
  uint16_t particles_03um, particles_05um, particles_10um, particles_25um, particles_50um, particles_100um;
  uint16_t unused;
  uint16_t checksum;
}; 

struct pms5003data data ={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}; // sets the values to 0 so that the first upload is not jiberish

unsigned long fastDelayTime = 500;
unsigned long previousFastMillis = 0;

void setup() {
  
  Serial.begin(115200);
  Serial1.begin(9600);
    
  while (!Serial && millis() < 4000);
  Serial.println("\nHello Particle");
}

void loop() {
  // This sends the sensor data that needs to be sent quickly to shiftr - ie//wind
  unsigned long currentMillis = millis();
  if (currentMillis - previousFastMillis >= fastDelayTime) {
      previousFastMillis = currentMillis;
    if (readPMSdata(&Serial1)) {
      Serial.print("Particles > 0.3um / 0.1L air:"); Serial.println(data.particles_03um);
      Serial.print("Particles > 0.5um / 0.1L air:"); Serial.println(data.particles_05um);
      Serial.print("Particles > 1.0um / 0.1L air:"); Serial.println(data.particles_10um);
      Serial.print("Particles > 2.5um / 0.1L air:"); Serial.println(data.particles_25um);
      Serial.print("Particles > 5.0um / 0.1L air:"); Serial.println(data.particles_50um);
      Serial.print("Particles > 10.0 um / 0.1L air:"); Serial.println(data.particles_100um);
      Serial.println("---------------------------------------");
    }
  }
}  

boolean readPMSdata(Stream *s) {
  // Read a byte at a time until we get to the special '0x42' start-byte
  while (s->available() && s->peek() != 0x42) {
    s->read();
  }

  if (! s->available()) {
    Serial.println("no data");
    return false;
  }
  
  // Now read all 32 bytes
  if (s->available() < 32) {
    Serial.println("< 32 bytes available");
    return false;
  }
    
  uint8_t buffer[32];    
  uint16_t sum = 0;
  s->readBytes(buffer, 32);

  // get checksum ready
  for (uint8_t i=0; i<30; i++) {
    sum += buffer[i];
  }

  /* debugging
  for (uint8_t i=2; i<32; i++) {
    Serial.print("0x"); Serial.print(buffer[i], HEX); Serial.print(", ");
  }
  Serial.println();
  */
  
  // The data comes in endian'd, this solves it so it works on all platforms
  uint16_t buffer_u16[15];
  for (uint8_t i=0; i<15; i++) {
    buffer_u16[i] = buffer[2 + i*2 + 1];
    buffer_u16[i] += (buffer[2 + i*2] << 8);
  }

  // put it into a nice struct :)
  memcpy((void *)&data, (void *)buffer_u16, 30);

  if (sum != data.checksum) {
    Serial.println("Checksum failure");
    return false;
  }
  // success!
  return true;
}
