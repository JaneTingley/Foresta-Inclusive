class Element {

  float xOff;
  float yOff;

  float xIncr;
  float yIncr;

  float xPos;
  float yPos;

  int start1;
  int stop1;
  int start2;
  int stop2;

  float size;

  float eleHue;
  float satModifer;
  float newSat;

  float n;
  Element(int eleHueInput, int startInput1, int stopInput1, int startInput2, int stopInput2) {

    //setting the offsets to a random position makeing sure circles all start in different location
    xOff = random(width);
    yOff = random(height);

    //setting our incremeant values to a random number making sure all circle movement is differnet
    //changing these ranges will produce different types of perlin noise randomness (try it out :) )
    xIncr = random(0.0001, 0.005);
    yIncr = random(0.0001, 0.005);

    //determining a uniform size for all circles could map this to another data stream maybe?
    size = 10;

    //initialzing this variable witht he color we want each circle to be
    eleHue = eleHueInput;

    //ranges of possible sensor data that can be returned
    start1 = startInput1;
    stop1 = stopInput1;

    //ranges the sensor data is being mapped too
    start2 = startInput2;
    stop2 = stopInput2;
  }

  //this function moves the circles around the screen
  void move () { 
    xOff += xIncr;
    yOff += yIncr;

    xPos = map(noise(xOff), 0, 1, 0, width);
    yPos = map(noise(yOff), 0, 1, 0, height);
  }


  //functions that controls the display of sphere
  void display(float satModifer) {    

    //newSat takes in the sensor data and maps it to a unique range min and range max 
    newSat = map(satModifer, start1, stop1, start2, stop2);

    fill(eleHue, newSat, 100);
    strokeWeight(0);
    ellipse(xPos, yPos, size, size);
  }
}
