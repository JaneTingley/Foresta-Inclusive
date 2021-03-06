// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// Seek_Arrive

// The "Vehicle" class

class Vehicle {
  PShape s;

  PVector position;
  PVector velocity;
  PVector acceleration;
  float r;
  float maxForce;    // Maximum steering force
  float maxSpeed;    // Maximum speed
  float wiggle; //controls org wiggle
  int savedTime;
  boolean followPerson;

  Vehicle(float x, float y) {
    acceleration = new PVector(0, 0);
    velocity = new PVector(0, -2);
    position = new PVector(x, y);
    r = 6;
    maxSpeed = 1;
    maxForce = 0.2;

    wiggle = random(-1, 1);

    savedTime = millis();
    followPerson = true;
    s = loadShape("data/trichonympha_ver1_reduced_flip.obj");
  }




  // Method to update position
  void update() {
    velocity.limit(maxSpeed);
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0);
    // Reset accelerationelertion to 0 each cycle
    acceleration.mult(0);
  }





  void flow (PVector [] vectors) {
    int x = floor(position.x / scale);
    int y = floor(position.y / scale);
    int index =  floor(x + y * cols);
    PVector force = vectors[index];
    applyForce(force);
  }

  void applyForce(PVector force) {
    // We could add mass here if we want A = F / M
    acceleration.add(force);
  }

  // A method that calculates a steering force towards a target
  // STEER = DESIRED MINUS VELOCITY
  void seek(PVector input) {
    if (followPerson == true) {


      PVector desired = PVector.sub(input, position);  // A vector pointing from the position to the target
      // Scale to maximum speed
      desired.setMag(5);

      // Steering = Desired minus velocity
      PVector steer = PVector.sub(desired, velocity);
      steer.limit(maxForce);  // Limit to maximum steering force

      applyForce(steer);
      
    }
  }


  //this code was adapted from Daniel Shiffmans https://natureofcode.com/ //
  void separate (ArrayList<Vehicle> vehicles) {
    // Note how the desired separation is based
    // on the Vehicle’s size.
    float desiredseparation = 20; //[bold]
    PVector sum = new PVector();
    int count = 0;
    for (Vehicle other : vehicles) {
      float d = PVector.dist(position, other.position);
      if ((d > 0) && (d < desiredseparation)) {
        PVector diff = PVector.sub(position, other.position);
        diff.normalize();
        diff.div(d);  //[bold]
        sum.add(diff);
        count++;
      }
    }
    if (count > 0) {
      sum.div(count);
      sum.normalize();
      sum.mult(maxSpeed);
      PVector steer = PVector.sub(sum, velocity);
      steer.limit(maxForce);
      applyForce(steer);
    }
  }
  ////////////////////////////////////////////////////////////////////////

  void edges () {

    if (position.x > width ) {
      position.x = random(20, 30);
    } else if (position.x < 0 ) {
      position.x = width - random(20, 30);
    }

    if (position.y > height ) {
      position.y = random(20, 30);
    } else if (position.y < 0 ) {
      position.y = height  - random(20, 30);
    }
  }

  void followTimer() {
    int loiterTime = 5000;
    int passedTime = millis() - savedTime; 
    if (passedTime >  loiterTime) {
      savedTime = millis();
      return;
    }
  }

  void display() {


    s.setFill(color(#00fff0));
    float theta = velocity.heading2D() + PI/2;
    pushMatrix();
    translate(position.x, position.y);
    rotate(theta);
    scale(2.5);
    shape(s, 0, 0);

    popMatrix();
  }
}
