ArrayList<Particle> particles = new ArrayList<Particle>(); //<>//
Particle p;
void setup () {
  size(600, 400);
  pixelDensity(2);
}

void draw () {
  background(0);
  for (int i = 0; i < 10; i++) {
    p = new Particle();
  }
  particles.add(p);
  for (int i = particles.size()-1; i >= 0; i--) {
    particles.get(i).update();
    particles.get(i).show();

    if (particles.get(i).isDead()) {
      particles.remove(i);
    }
  }
}
