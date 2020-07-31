class Particle {

  //Controls particle movement
  PVector position;
  PVector velocity;
  PVector acceleration;
  float maxSpeed;

  //Controls particle style
  color particleColor;
  color particleColorSource;
  float particleSizeIncreaser;
  int size;
  color from;
  color to;
  int paletteSwitch;
  static final int pollenSize = 8; // Change this for pollen size
  static final int pollenThreshold = 15000; 
  static final int pollutionMin = 60000;
  static final int pollutionMax = 65000;

  float sensorLight;
  float sensorTemp;
  int originalSize;

  color [][] colorPalette = {  {#007adf, #00ecbc}, {#f43b47, #873a94}, {#f9d423, #ff4e50}, {#6fb007, #f5c000}, };



  float irSensorTripped;

  float targetBallPositionX;
  float currentBallPositionX = 0;
  float particlePollutionMapper;
  boolean isPollen;


  Particle(float posX, float posY, float sensorLightInput, float sensorTempInput, float particleSizeInput, boolean isPollenInput) {
    isPollen = isPollenInput;
    color from = color(#007adf); //Hex values of particle (from and to)
    color to = color(#00ecbc);  //Hex values of particle
    particlePollutionMapper = 0;

    //map the values of the sensors to a usable range
    sensorLight = map(sensorLightInput, 40.18333333, 1000, 0.5, 5);
    sensorLight = constrain(sensorLight, 0.5, 5);
    sensorTemp = map(sensorTempInput, 0, 2, 0, 1);
    //set particle movement parameters
    position = new PVector (posX, posY);
    velocity = new PVector (0, 0);
    acceleration = new PVector (0, 0);
    maxSpeed = sensorTemp; 

    //set particle display parameters
    particleColorSource = lerpColor(from, to, sensorTemp);
    particleColor = particleColorSource;
    particleSizeIncreaser = 1;
    originalSize = int(particleSizeInput);
  }

  void flow (PVector [] vectors) {
    int x = floor(position.x / scale);
    int y = floor(position.y / scale);
    int index =  floor(x + y * cols);
    PVector force = vectors[index];
    applyForce(force);
  }

  void avoidUser() {
    //maps the speed of the mouse to radius particles should be replled to
    float rawMouseSpeed = dist(mouseX, mouseY, pmouseX, pmouseY);
    float smoothedSpeedToRadius = map(rawMouseSpeed, 1, 40, 5, 60);

    if (dist(position.x, position.y, mouseX, mouseY) < smoothedSpeedToRadius) { // leap motion here
      PVector mouse = new PVector(mouseX, mouseY);
      mouse.sub(position); // gets the position of the particle in relation to the mouse
      mouse.setMag(random(-5, -1)); //sets the strength of the avoidance (negatives numbers repel, positive numbers attract);
      acceleration = mouse;
      color newColor = lerpColor(particleColor, color(#f093fb), sensorTemp+0.45);
      particleColor = newColor;
      particleSizeIncreaser += 0.20; //increases the thickness of the particle the longer the mouse is close to it
    } else {
      if (particleSizeIncreaser > 1) {
        particleSizeIncreaser -= 0.10;
      }
    }
  }

  //Handles the movement of the particle (do not change)
  void update(float sensorWindIn) {
    float windMappedSpeed = map(sensorWindIn, 78, 100, 0.05, 2);
    maxSpeed = windMappedSpeed; 
    velocity.limit(maxSpeed);
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0);
  }

  //Helper method that adds the force of flowfield vector to particle
  void applyForce(PVector force) {  
    acceleration.add(force);
  }



  //method to pushaway and grow particles when close to mouse
  void avoidIR(float sensorPositionX) {
    //maps the speed of the mouse to radius particles should be replled to


    if (dist(position.x, position.y, sensorPositionX + random(-50, 50), height/2 + random(-50, 50)) < random(10, 150)) {
      PVector irSensor = new PVector(sensorPositionX, height/2);
      irSensor.sub(position); // gets the position of the particle in relation to the mouse
      acceleration = irSensor;

      irSensor.setMag(random(-2)); //sets the strength of the avoidance (negatives numbers repel, positive numbers attract);
      color newColor = lerpColor(particleColor, color(#f093fb), sensorTemp+0.45);
      particleColor = newColor;
    }
  }

  //Reset particle position to oppsite edge if offscreen
  void edges () {
    if (position.x > width || position.x < 0 || position.y > height || position.y < 0) {
      position.x = random(5, width);
      position.y = random(5, height);
    }
  }

  void changeColor(int timeIn) {
    paletteSwitch = int(map(timeIn, 0, 150, 0, colorPalette.length ));
    int paletteSwitchLimited = constrain(paletteSwitch, 0, colorPalette.length-1);

    color newFill = lerpColor(colorPalette[paletteSwitchLimited][0], colorPalette[paletteSwitchLimited][1], sensorTemp);
    particleColor = newFill;
  }




  void show(int lightIN, int particle2_5Input, int particle10Input) {
    changeColor(lightIN);
    avoidUser();
    particlePollutionMapper = int(map(particle2_5Input, pollutionMin, pollutionMax, 0, 55)); // Change first two numbers according to insitu environmental conditions
    particlePollutionMapper = constrain(particlePollutionMapper, 0, 55); // constains the map from exceeding the mapped to parameters



    float hue = hue(particleColor);
    float saturation = saturation(particleColor);
    float brightness = brightness(particleColor);
    float pollenMaker = 0;
    if (isPollen == true && particle10Input > pollenThreshold ) {
      fill(48, 100, 100);
      size = pollenSize;
    } else {
      fill(hue, (saturation - particlePollutionMapper) + pollenMaker, (brightness - particlePollutionMapper) + pollenMaker);
      size = originalSize;
    }

    noStroke();
    ellipse(position.x, position.y, size, size);
  }
}
