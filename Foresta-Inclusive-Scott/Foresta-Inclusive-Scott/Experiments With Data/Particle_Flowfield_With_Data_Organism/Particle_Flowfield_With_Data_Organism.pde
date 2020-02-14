int scale = 20; // -----------------------------change this for density of flowfield
int cols;
int rows;
float inc = 0.04;
float zoff = 0;

//array list that contains the particle objects
ArrayList<Particle> particles = new ArrayList<Particle>();
//array of vectors that makes up the flow field
PVector [] flowField;

Table table;
Vehicle v;

float xOff;
float yOff;

float xIncr;
float yIncr;

float xPos;
float yPos;

void setup() {
  size(800, 800, P3D);
  //fullScreen();
  background(20, 0, 50);

  //setting the offsets to a random position makeing sure circles all start in different location
  xOff = random(width);
  yOff = random(height);

  //setting our incremeant values to a random number making sure all circle movement is differnet
  //changing these ranges will produce different types of perlin noise randomness (try it out :) )
  xIncr = random(0.0001, 0.002);
  yIncr = random(0.0001, 0.002);

  v = new Vehicle(width/2, height/2);

  //dividing canvas into a grid that is scaled
  cols = floor(width / scale) + 1;
  rows = floor(height / scale) + 1;

  table = loadTable("data/sensor_data.csv", "header");

  for (TableRow row : table.rows()) {
    for (int i = 0; i < 60; i++) {
      float light = row.getFloat("light");
      float temp = row.getFloat("temp");


      particles.add(new Particle(random(width), random(height), light, temp));
    }
  }

  //setting flowfield array size
  flowField = new PVector [cols*rows];
}

PVector move () {
  xOff += xIncr;
  yOff += yIncr;

  xPos = map(noise(xOff), 0, 1, 0, width);
  yPos = map(noise(yOff), 0, 1, 0, height);
  return new PVector(xPos, yPos);
}

void draw() {
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

      //___________________________Set how strictly the particle will follow the direction of the flowfield (Higher the value the strictier it will follow the direction)
      v.setMag(0.10); 

      //Add the calculated vector to the flowfield
      flowField[index] = v;
      xoff += inc;
    }
    yoff += inc;

    //change this value to increase the speed of change in the flowfield noise
    zoff += 0.0001;
  }

  PVector orgPos = move();

  v.seek(orgPos);
  v.update();
  v.display();
  //loop through particle object methods to generate the visuals
  for (int i = 0; i < particles.size(); i++) {
    particles.get(i).flow(flowField);
    particles.get(i).update();
    particles.get(i).edges();
    particles.get(i).show(orgPos);
  }
}
