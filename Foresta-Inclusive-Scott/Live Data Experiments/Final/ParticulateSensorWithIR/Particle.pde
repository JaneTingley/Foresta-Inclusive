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

  float sensorLight;
  float sensorTemp;

  color [][] colorPalette = {{#007adf, #00ecbc}, {#f43b47, #453a94}, {#50cc7f, #f5d100}, {#f9d423, #ff4e50}};



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
    size = int(particleSizeInput);
  }

  void flow (PVector [] vectors) {
    int x = floor(position.x / scale);
    int y = floor(position.y / scale);
    int index =  floor(x + y * cols);
    PVector force = vectors[index];
    applyForce(force);
  }

  //Handles the movement of the particle (do not change)
  void update(float sensorWindIn) {
    float windMappedSpeed = map(sensorWindIn, 5, 100, 0.05, 1);
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
     paletteSwitch = int(map(timeIn, 0, 1000, 0, colorPalette.length ));
     paletteSwitch = constrain(paletteSwitch, 0, colorPalette.length-1);
    
    
    
    
    color newFill = lerpColor(colorPalette[paletteSwitch][0], colorPalette[paletteSwitch][1], sensorTemp);
    particleColor = newFill;
  }

  void irChecker(int [] sensorArray) {
    if (sensorArray[0] <=125) {
      irSensorTripped = 0;
    } else if (sensorArray[1] <=125) {
      irSensorTripped = 1;
    } else if (sensorArray[2] <=125) {
      irSensorTripped = 2;
    } else if (sensorArray[3] <=125) {
      irSensorTripped = 3;
    } else if (sensorArray[4] <=125) {
      irSensorTripped = 4;
    } else {
      irSensorTripped = 0;
    }




    targetBallPositionX = map(irSensorTripped, 0, 4, -50, width+50);


    if (targetBallPositionX > currentBallPositionX) {
      currentBallPositionX += 10;
    } else if (targetBallPositionX < currentBallPositionX) {
      currentBallPositionX -= 10;
    } else {
      currentBallPositionX = targetBallPositionX;
    }


    avoidIR(currentBallPositionX);
    //ellipse(currentBallPositionX, height/2, 50, 50);
  }


  void show(int lightIN, int [] sensorArrayIn, int particle2_5Input, int particle10Input) {
    changeColor(lightIN);

    particlePollutionMapper = int(map(particle2_5Input, 300, 400, 0, 55));
    particlePollutionMapper = constrain(particlePollutionMapper, 0, 55); // constains the map from exceeding the mapped to parameters
    irChecker(sensorArrayIn);



    float hue = hue(particleColor);
    float saturation = saturation(particleColor);
    float brightness = brightness(particleColor);
    float pollenMaker = map(mouseX, 0, width, 0, 100);

    if (isPollen == true && particle10Input > 100 ) {
      fill(48, 100, 100);
      size = 8;
    } else {
      fill(hue, (saturation - particlePollutionMapper) + pollenMaker, (brightness - particlePollutionMapper) + pollenMaker);
    }

    noStroke();
    ellipse(position.x, position.y, size, size);
  }
}
