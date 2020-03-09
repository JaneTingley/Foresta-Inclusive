import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Testing_Portfolio_Effects_With_Ball extends PApplet {



int scale = 15;
int cols;
int rows;
float inc = 0.04f;
float zoff = 0;


ArrayList<Particle> particles = new ArrayList<Particle>();
PVector [] flowField;


public void setup () {
  
  background(20, 0, 50);


  cols = floor(width / scale) + 1;
  rows = floor(height / scale) + 1;

  for (int i = 0; i < 10000; i++) {
    particles.add(new Particle(random(width), random(height)));
  }

  flowField = new PVector [cols*rows];
}

public void draw () {
  background(20, 0, 50);



  float yoff = 0;

  for (int y = 0; y < rows; y++) {
    float xoff= 0;
    for (int x = 0; x < cols; x++) {

      int index = x + y * cols;
      float angle = noise (xoff, yoff, zoff) * TWO_PI * 2;
      PVector v = PVector.fromAngle(angle);
      v.setMag(.05f);



      flowField[index] = v;
      xoff += inc;

      //push();
      //translate(x*scale, y*scale);
      //rotate(v.heading());
      //line(0, 0, scale, 0);
      //pop();
    }
    yoff += inc;
    zoff += 0.0001f;
  }

  for (int i = 0; i < particles.size(); i++) {
    particles.get(i).flow(flowField);
    particles.get(i).update();
    particles.get(i).edges();
    particles.get(i).show();
  }
}
class Particle {
  PVector position;
  PVector velocity;
  PVector acceleration;

  int maxSpeed;
  PVector prevPosition;


  int [] colors = {color(0xff00fff0), color(0xff00d1ff), color(0xff00fc2e)};
  int rand;
  float thickness;


  Particle (float posX, float posY) { 
    position = new PVector (posX, posY);
    velocity = new PVector (0, 0);
    acceleration = new PVector (0, 0);
    maxSpeed = 2;
    prevPosition  = position.copy();
    rand = floor(random(0, colors.length));
    thickness = 1;
    
  }

  public void update() {
    velocity.limit(maxSpeed);
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0);
  }



  public void applyForce(PVector force) {
    acceleration.add(force);
  }

  public void show() {


    if (dist(position.x, position.y, mouseX, mouseY) < 30) {
      PVector mouse = new PVector(mouseX, mouseY);
      mouse.sub(position);
      mouse.setMag(-1);
      acceleration = mouse;
      thickness += 0.05f;

    } else {
      if (thickness > 1) {
        thickness -= 0.10f;
      }
      acceleration.x = 0;
      acceleration.y = 0;
    }
    strokeWeight(thickness);
    stroke(colors[rand], 80);
    line(position.x, position.y, prevPosition.x, prevPosition.y);
    updatePrevPosition();
  }

  public void updatePrevPosition () {
    prevPosition.x = position.x;
    prevPosition.y = position.y;
  }

  public void edges () {
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

  public void flow (PVector [] vectors) {
    int x = floor(position.x / scale);
    int y = floor(position.y / scale);
    int index =  floor(x + y * cols);
    PVector force = vectors[index];


    applyForce(force);
  }
}
  public void settings() {  size(800, 800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Testing_Portfolio_Effects_With_Ball" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
