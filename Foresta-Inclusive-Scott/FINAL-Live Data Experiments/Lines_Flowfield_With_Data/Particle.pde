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
  float inc = 0.07;
  float aplha = 100;

  float sensorLight;
  float sensorTemp;
  //color [][] colorPalette = {{color(#007adf), color(#00ecbc)}, {}}; orignal colors

  color [][] colorPalette = {{#007adf, #00ecbc}, {#f43b47, #453a94}, {#50cc7f, #f5d100}, {#f9d423, #ff4e50}};

  int rand= int(random(0, 2));
  //Constructor for particle
  Particle(float posX, float posY, float sensorLightInput, float sensorTempInput) {
    color from = color(#007adf); //Hex values of particle (from and to)
    color to = color(#00ecbc);  //Hex values of particle
    //map the values of the sensors to a usable range
    sensorLight = map(sensorLightInput, 40.18333333, 259.8135593, 0.5, 5);
    sensorTemp = map(sensorTempInput, 6, 13, 0, 1);
    //set particle movement parameters
    position = new PVector (posX, posY);
    velocity = new PVector (0, 0);
    acceleration = new PVector (0, 0);
    maxSpeed = sensorTemp; 

    //set particle display parameters
    particleColorSource = lerpColor(from, to, sensorTemp);
    particleColor = particleColorSource;
    particleSizeIncreaser = 1;
    size = int(sensorLight);
  }

  void flow (PVector [] vectors) {
    int x = floor(position.x / scale);
    int y = floor(position.y / scale);
    int index =  floor(x + y * cols);
    PVector force = vectors[index];
    applyForce(force);
  }

  //Handles the movement of the particle (do not change)
  void update() {
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
  void avoidUser() {
    //maps the speed of the mouse to radius particles should be replled to
    float rawMouseSpeed = dist(mouseX, mouseY, pmouseX, pmouseY);
    float smoothedSpeedToRadius = map(rawMouseSpeed, 1, 40, 30, 60);

    if (dist(position.x, position.y, mouseX, mouseY) < smoothedSpeedToRadius) {
      PVector mouse = new PVector(mouseX, mouseY);
      mouse.sub(position); // gets the position of the particle in relation to the mouse
      acceleration = mouse;

      mouse.setMag(random(-3, -1)); //sets the strength of the avoidance (negatives numbers repel, positive numbers attract);
      color newColor = lerpColor(particleColor, color(#f093fb), sensorTemp+0.45);
      particleColor = newColor;
    } else {
      if (particleSizeIncreaser > 1) {
        particleSizeIncreaser -= 0.10;
      }
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
    int paletteSwitch = int(map(timeIn, 0, 610, 0, colorPalette.length ));
    // println(timeIn, paletteSwitch);
    color newFill = lerpColor(colorPalette[paletteSwitch][0], colorPalette[paletteSwitch][1], sensorTemp);

    particleColor = newFill;
  }


  void show(int timeIn) {
    changeColor(timeIn);
    avoidUser();
    fill(particleColor);
    noStroke();
    ellipse(position.x, position.y, size + particleSizeIncreaser, size+ particleSizeIncreaser);
  }
}
