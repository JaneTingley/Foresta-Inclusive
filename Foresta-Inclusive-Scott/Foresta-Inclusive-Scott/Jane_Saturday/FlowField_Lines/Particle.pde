class Particle {
  PVector position;
  PVector velocity;
  PVector acceleration;

  int maxSpeed;
  PVector prevPosition;

  color [] colors = {color(#00fff0), color(#00d1ff), color(#6927ff)};
  int rand;
  Particle () { 
    position = new PVector (random(width), random(height));
    velocity = new PVector (0, 0);
    acceleration = new PVector (0, 0);
    maxSpeed = 4;
    prevPosition  = position.copy();
    rand = floor(random(0, colors.length));
  }

  void update() {
    velocity.limit(maxSpeed);
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0);
  }

  void applyForce(PVector force) {
    acceleration.add(force);
  }

  void show() {
    stroke(colors[rand], 2);
    line(position.x, position.y, prevPosition.x, prevPosition.y);
    updatePrevPosition();
  }

  void updatePrevPosition () {
    prevPosition.x = position.x;
    prevPosition.y = position.y;
  }

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

  void flow (PVector [] vectors) {
    int x = floor(position.x / scale);
    int y = floor(position.y / scale);
    int index =  floor(x + y * cols);
    PVector force = vectors[index];
    applyForce(force);
  }
}
