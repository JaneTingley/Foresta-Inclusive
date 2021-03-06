int scale = 20;
int cols;
int rows;
float inc = 0.1;
float zoff = 0;

ArrayList<Particle> particles = new ArrayList<Particle>();
PVector [] flowField;

void setup () {
  //size(500, 500);
  fullScreen();
  background(20, 0, 50);

  cols = floor(width / scale) + 1;
  rows = floor(height / scale) + 1;

  for (int i = 0; i < 5000; i++) {
    particles.add(new Particle());
  }
  flowField = new PVector [cols*rows];
}

void draw () {
  float yoff = 0;

  for (int y = 0; y < rows; y++) {
    float xoff= 0;
    for (int x = 0; x < cols; x++) {

      int index = x + y * cols;
      float angle = noise (xoff, yoff, zoff) * TWO_PI * 2;
      PVector v = PVector.fromAngle(angle);
      v.setMag(.25);

      flowField[index] = v;
      xoff += inc;

      //push();
      //translate(x*scale, y*scale);
      //rotate(v.heading());
      //line(0, 0, scale, 0);
      //pop();
    }
    yoff += inc;
    zoff += 0.001;
  }

  for (int i = 0; i < particles.size(); i++) {
    particles.get(i).flow(flowField);
    particles.get(i).update();
    particles.get(i).edges();
    particles.get(i).show();
  }
}
