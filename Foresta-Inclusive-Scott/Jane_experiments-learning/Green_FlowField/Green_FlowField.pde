int scale = 25; // -----------------------------change this for density of flowfield
int cols;
int rows;
float inc = 0.04;
float zoff = 0;

//array list that contains the particle objects
ArrayList<Particle> particles = new ArrayList<Particle>();
//array of vectors that makes up the flow field
PVector [] flowField;

void setup () {
  //
  fullScreen();
  //size(500, 500);
  background(20, 0, 50);

  //delete this when not on a retina display 
  //(deleteing also imrpoves performance at cost of visuals)
  pixelDensity(2);

  //dividing canvas into a grid that is scaled
  cols = floor(width / scale) + 1;
  rows = floor(height / scale) + 1;

  //adding 6000 particles into the sketch
  for (int i = 0; i < 10000; i++) {
    particles.add(new Particle(random(width), random(height)));
  }

  //setting flowfield array size
  flowField = new PVector [cols*rows];
}

void draw () {
  background(20, 0, 50);

  float yoff = 0;

  for (int y = 0; y < rows; y++) {
    float xoff= 0;
    for (int x = 0; x < cols; x++) {
      int index = x + y * cols;
      //calculate a random angle based off the 3D noise
      float angle = noise (xoff, yoff, zoff) * TWO_PI * 2;

      //Set flowfield vector to angle calculated above
      PVector v = PVector.fromAngle(angle);

      //___________________________Set how strictly the particle will follow the direction of the flowfield
      //(Higher the value the strictier it will follow the direction)
      v.setMag(0.5); 

      //Add the calculated vector to the flowfield
      flowField[index] = v;
      xoff += inc;


      //---------------------------Uncomment this block to see the flowfield
      //(for dev purposes can remove it entirely if you wish)
      
      //push();
      //translate(x*scale, y*scale);
      //rotate(v.heading());
      //line(0, 0, scale, 0);
      //pop();
      
    }

    //increment the noise offsets
    yoff += inc;

    //change this value to increase the speed of change in the flowfield noise
    zoff += 0.0001;
  }
  
  //loop through particle object methods to 
  //generate the visuals
  for (int i = 0; i < particles.size(); i++) {
    particles.get(i).flow(flowField);
    particles.get(i).update();
    particles.get(i).edges();
    particles.get(i).show();
  }
}
