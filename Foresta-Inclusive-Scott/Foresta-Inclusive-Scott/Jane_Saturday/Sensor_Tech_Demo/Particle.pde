class Particle {
  PVector position;
  PVector velocity;
  PVector acceleration;

  float maxSpeed;
  PVector prevPosition;

  int rand;
  float thickness;

  //------------------------------color pallete the the particles will randomly select from
  color [] colors = {color(#00fff0), color(#00d1ff), color(#00fc2e)};

  Particle (float posX, float posY) { 

    //determines particle position
    position = new PVector (posX, posY);

    //determines particle speed
    velocity = new PVector (0, 0);

    //determines particle acceleration
    acceleration = new PVector (0, 0);

    //------------------------------limits speed of particle 
    maxSpeed = 2;

    //copies last position of particle for use in show method
    //if the particle is not a line can delete this 
    prevPosition  = position.copy();

    //select a random number to be as index in the color pallete array
    rand = floor(random(0, colors.length));

    //set thickness of the particle
    thickness = 1;
  }



  //This method handles the movement of the particle (do not change)
  void update(int inputSpeed) {
    maxSpeed = map(inputSpeed, 0, 800, 0, 10);
    println(maxSpeed, "---");

    velocity.limit(maxSpeed);
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0);
  }

  //helper method that adds the force of flowfield vector to particle
  void applyForce(PVector force) {
    acceleration.add(force);
  }

  //Method to make the particles avoid the users cursor and
  //increase in thickness when doing so
  void avoidUser() {
    //--------------------------------------------checks if mouse is within 30px of a particle
    if (dist(position.x, position.y, mouseX, mouseY) < 10) {
      PVector mouse = new PVector(mouseX, mouseY);
      mouse.sub(position);

      //-----------------------sets the strength of the avoidance (negative number will repel, positive will attact)
      mouse.setMag(-1);
      acceleration = mouse;

      //------------------------increases the thickness of the particle the longer the mouse is close to it
      thickness += 0.25;
    } else {
      //slowly scales the particle back to normal size when mouse is far away
      if (thickness > 1) {
        thickness -= 0.10;
      }
      //set acceleration back to 0 when mouse leavs
      acceleration.x = 0;
      acceleration.y = 0;
    }
  }

  //method that displays the particle
  void show() {
    //check for mouse proximity
    avoidUser();
    strokeWeight(thickness);

    //-----------------------------------display particle using random color from the pallete
    stroke(colors[rand], 30); //opacity

    //draw the particle as line
    line(position.x, position.y, prevPosition.x, prevPosition.y);

    //update previous position for next frame
    updatePrevPosition();
  }

  //method that stores last frames particle position
  void updatePrevPosition () {
    prevPosition.x = position.x;
    prevPosition.y = position.y;
  }


  //method that checks and resets particles position to opposite edge of screen
  // if they run off it
  void edges () {
    if (position.x > width ) {
      position.x = 0;
      updatePrevPosition();
    }

    if (position.x < 0 ) {
      position.x = width;
      updatePrevPosition();
    }

    if (position.y > height ) {
      position.y = 0;
      updatePrevPosition();
    }

    if (position.y < 0 ) {
      position.y = height;
      updatePrevPosition();
    }
  }

  //method that adds flow field force and values to the particle 
  //(do not change)
  void flow (PVector [] vectors) {
    int x = floor(position.x / scale);
    int y = floor(position.y / scale);
    int index =  floor(x + y * cols);
    PVector force = vectors[index];
    applyForce(force);
  }
}
