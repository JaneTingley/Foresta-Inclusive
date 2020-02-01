class Particle {
  float x;
  float y;
  
  float vx;
  float vy;
  
  int size;
  
  float alpha;

  Particle () {
    x =  width/2;
    y = height-100;
    
    vx = random(-1, 1);
    vy = random(-5, -1);
    size = 16;
    
    alpha = 255;
  }

  void show() {
    stroke(255);
    fill(255, alpha);
    line(x, y, x, size);
  }
  
  void update(){
    x += vx;
    y += vy;
    alpha -= 5;
  }
  
  boolean isDead() {
    return alpha <= 0;
  }
}
