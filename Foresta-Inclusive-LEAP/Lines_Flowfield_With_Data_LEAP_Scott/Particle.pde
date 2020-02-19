class Particle {
import com.leapmotion.leap.*;

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
  float inc = 0.07;
  float aplha = 100;

  float x;
  float y;

  float sensorLight;
  float sensorTemp;
  color [] colorP = {color(#f093fb), color(#f5576c)};
  int rand= int(random(0, 2));
  //Constructor for particle

  Controller leap; //The Controller class is your main interface to the Leap Motion Controller.
  Frame frame;
  Pointable pointer;



  Particle(float posX, float posY, float sensorLightInput, float sensorTempInput) {
    leap = new Controller();
    frame = leap.frame();
    pointer = frame.pointables().frontmost();




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
    particleColor = lerpColor(from, to, sensorTemp);
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
    
    if ( pointer.isValid() ) {// this is a boolean

      color frontColor = color(245, 242, 250 ); // set the fill colour and define the opacity

      InteractionBox iBox = frame.interactionBox();//The InteractionBox class represents a box-shaped region completely within the field of view of the Leap Motion controller
      // A class that stores the interaction zone (named "iBox") as seen by leap

      Vector tip = iBox.normalizePoint(pointer.tipPosition()); // Vector = three floats ->X, Y, Z coordinate b/w 0 and 1
      //The Vector struct (class) represents a three-component mathematical vector or point such as a direction or position in three-dimensional space
      // named "tip"
      fingerPaint(tip, frontColor); // fingerPaint below (tip, frontColor (from line 30))
    }

    
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
    float rawMouseSpeed = dist(mouseX, mouseY, pmouseX, pmouseY);// determines width
    float smoothedSpeedToRadius = map(rawMouseSpeed, 1, 40, 30, 60); // smoothing values

    if (dist(position.x, position.y, x, y) < smoothedSpeedToRadius) {
      PVector mouse = new PVector(x, y);
      mouse.sub(position); // gets the position of the particle in relation to the mouse
      acceleration = mouse;

      mouse.setMag(random(-3, -1)); //sets the strength of the avoidance (negatives numbers repel, positive numbers attract);
      color newColor = lerpColor(particleColor, color(#f093fb), sensorTemp+0.25);
      fill(newColor);
    } else {
      if (particleSizeIncreaser > 1) {
        particleSizeIncreaser -= 0.10;
      }
      fill(particleColor);
    }
  }

  void fingerPaint(Vector tip, color frontColor) // gets the values from fingerPaint(tip, frontColor) above
  { 
    fill(frontColor);
    x = tip.getX() * width; // define X - The horizontal component. Here we need to de-normalize it - times the value b/w 0 and 1 (so for example .87)
    // When you multiply it by width you get the position relative to the width
    y = height - tip.getY() * height; // the leap motion defines from bottom and Processing defines Y from top. this reverses the values 
    ellipse( x, y, tip.getZ()*100, tip.getZ()*100);   // X and y defines location and the second two values determin width and height
    //https://developer-archive.leapmotion.com/documentation/java/api/gen-java/classcom_1_1leapmotion_1_1leap_1_1_vector.html
    // See the info on vector to understand getX()
  }

  //Reset particle position to oppsite edge if offscreen
  void edges () {


    if (position.x > width || position.x < 0 || position.y > height || position.y < 0) {
      position.x = random(5, width);
      position.y = random(5, height);
    }
  }



  void show() {


    avoidUser(); //check if particle is near mouse
    noStroke();
    ellipse(position.x, position.y, size + particleSizeIncreaser, size+ particleSizeIncreaser);
  }
}
