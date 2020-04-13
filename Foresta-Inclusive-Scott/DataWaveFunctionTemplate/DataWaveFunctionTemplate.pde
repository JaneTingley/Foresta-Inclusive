//Step 1:
//Copy and paste this global variable at the top of every processing sketch you want 
//to use the wave data generator in, do not set it to anything
float theta;

void setup() {
  size(500, 500);
}


float waveData(int min, int max, float freq) {
  float data = map(sin(theta), -1, 1, min, max);
  theta += freq;
  return data;
}

void draw() {
  background(255);


  //Step 2:
  //Set the min and max of the range you want to step through
  //Set the freq to to any number that is 0.5 or lower

  //Step 3:
  //Make the function the value of the variable you want to use
  float x = waveData( width/2, width, 0.05);
  
  fill(x-250);
  //Step 4: 
  //Use Variable where you want can use multiple times too
  ellipse(x, height/2, 50, 50);
}
