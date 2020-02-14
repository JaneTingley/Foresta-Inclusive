class Particle {

  //Controls particle movement
  PVector position;
  PVector velocity;
  PVector acceleration;
  float maxSpeed;

  //Controls particle style
  color particleColor;
  float particleSizeIncreaser;
  int size;
  color from;
  color to;
  //Constructor for particle
  Particle(float posX, float posY, float sensorLight, float sensorTemp) {
    color from = color(#38f9d7);
    color to = color(#fee140);
    //map the values of the sensors to a usable range
    sensorLight = map(sensorLight, 40.18333333, 259.8135593, 0.5, 5);
    sensorTemp = map(sensorTemp, 6, 13, 0, 1);

    //set particle movement parameters
    position = new PVector (posX, posY);
    velocity = new PVector (0, 0);
    acceleration = new PVector (0, 0);
    maxSpeed = sensorLight; 

    //set particle display parameters
    particleColor = lerpColor(from, to, sensorTemp);
    particleSizeIncreaser = 1;
    size = 1;
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
  void avoidUser(PVector orgPos) {
    //maps the speed of the mouse to radius particles should be replled to
    float rawMouseSpeed = dist(mouseX, mouseY, pmouseX, pmouseY);
    float smoothedSpeedToRadius = map(rawMouseSpeed, 1, 40, 5, 60);

    if (dist(position.x, position.y, orgPos.x, orgPos.y) < smoothedSpeedToRadius) {
      PVector mouse = orgPos;
      mouse.sub(mouse); // gets the position of the particle in relation to the mouse
      mouse.setMag(random(-5, -1)); //sets the strength of the avoidance (negatives numbers repel, positive numbers attract);
      acceleration = mouse;
      particleSizeIncreaser += 0.20; //increases the thickness of the particle the longer the mouse is close to it
    } else {
      if (particleSizeIncreaser > 1) {
        particleSizeIncreaser -= 0.10;
      }
    }
  }

  //Reset particle position to oppsite edge if offscreen
  void edges () {

    if (position.x > width ) {
      position.x = 0;
    } else if (position.x < 0 ) {
      position.x = width;
    }

    if (position.y > height ) {
      position.y = 0;
    } else if (position.y < 0 ) {
      position.y = height;
    }
  }

  void show(PVector input) {

    avoidUser(input); //check if particle is near mouse
    fill(particleColor, 100);
    noStroke();
    ellipse(position.x, position.y, size + particleSizeIncreaser, size+ particleSizeIncreaser);
  }
}
