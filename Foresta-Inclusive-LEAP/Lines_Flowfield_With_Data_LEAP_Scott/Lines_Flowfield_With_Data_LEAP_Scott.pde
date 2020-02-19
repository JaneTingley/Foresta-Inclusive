//documentation for the Java API - https://developer-archive.leapmotion.com/documentation/java/api/gen-java/classcom_1_1leapmotion_1_1leap_1_1_controller.html
 import com.leapmotion.leap.*;


int scale = 20; // -----------------------------change this for density of flowfield
int cols;
int rows;
float inc = 0.07;
float zoff = 0;
//color canvasColor = #5005ff; // background colour
float alphaVal = 10; // between 0-255 - 10 is the best value

//array list that contains the particle objects
ArrayList<Particle> particles = new ArrayList<Particle>();
//array of vectors that makes up the flow field
PVector [] flowField;

Table table;

float xoff = 0.0;

//this controls one leap motion

void setup() {
  //frameRate(60);
  size(600, 600);
  //fullScreen();
  pixelDensity(2);
  background(20, 0, 50);
  stroke(0xf5f2fa); // default is black - so this sets it to white (ps black looks neat)

  //dividing canvas into a grid that is scaled
  cols = floor(width / scale) + 1;
  rows = floor(height / scale) + 1;

  table = loadTable("data/sensor_data.csv", "header");// excel type file

  for (TableRow row : table.rows()) {
    for (int i = 0; i < 30; i++) { // change the # to change the amount of particles
      float light = row.getFloat("light");
      float temp = row.getFloat("temp");


      particles.add(new Particle(random(width), random(height), light, temp));
    }
  }

  //setting flowfield array size
  flowField = new PVector [cols*rows];
}

void draw() {
  println(frameRate);
   
  xoff = xoff + .01;
  float alpha = map(noise(xoff), 0, 1, 4, 90);
  fill(20, 0, 50, alpha);
  rect(0, 0, width, height);


  float yoff = 0;
  for (int y = 0; y < rows; y++) {
    float xoff= 0;
    for (int x = 0; x < cols; x++) {
      int index = x + y * cols;

      //calculate a random angle based off the 3D noise
      float angle = noise (xoff, yoff, zoff) * TWO_PI * 2;

      //Set flowfield vector to angle calculated above
      PVector v = PVector.fromAngle(angle);

      //___________________________Set how strictly the particle will follow the direction of the flowfield (Higher the value the strictier it will follow the direction)
      v.setMag(0.12); 

      //Add the calculated vector to the flowfield
      flowField[index] = v;
      xoff += inc;
    }
    yoff += inc;

    //change this value to increase the speed of change in the flowfield noise
    zoff += 0.001; ////////========set this back to 0.0001
  }

  //loop through particle object methods to generate the visuals
  for (int i = 0; i < particles.size(); i++) {
    particles.get(i).flow(flowField);
    particles.get(i).update();
    particles.get(i).edges();
    particles.get(i).show();
  }
    

}
