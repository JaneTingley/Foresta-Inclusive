import mqtt.*;
MQTTClient client;

int scale = 50; // -----------------------------change this for density of flowfield
int cols;
int rows;
float inc = 0.07;
float zoff = 0;
float wind;
int particle2_5;
int particle10;

//array list that contains the particle objects
ArrayList<Particle> particles = new ArrayList<Particle>();
//array of vectors that makes up the flow field
PVector [] flowField;

Table table;

float xoff = 0.0;

int liveLight;

void setup() {
  colorMode(HSB, 360, 100, 100);
  size(1000, 1000, P2D);
  //fullScreen(P2D);


  client = new MQTTClient(this);
  client.connect("mqtt://buddadweet~Foresta-Inclusive@broker.shiftr.io", "processing-sketch");
  client.subscribe("WetSoil"); //values between 0-800
  client.subscribe("Lux"); // values between 0-800(ish) (hands covering sensor = 200, light but in shade =600
  client.subscribe("Temp-degree"); // remapped the values to produce between -30 and 30 degrees. Value not 100% accurate
  client.subscribe("Wind"); 
  client.subscribe("Particles2.5"); 
  client.subscribe("Particles10"); 


  background(20, 0, 50);


  table = loadTable("data/sensor_data.csv", "header");// excel type file

  for (TableRow row : table.rows()) {//reads data down the collumns
    float light = row.getFloat("Lux");
    float temp = row.getFloat("Temp-degree");
    int size = 0;

    int particle2_5Count = int(row.getFloat("Particles2.5") + 1) * 15;
    int particle10Count = int(row.getFloat("Particles10") + 1) * 15;

    for (int i = 0; i < particle2_5Count; i++) {
      size = 2;
      particles.add(new Particle(random(width), random(height), light, temp, size, false));
    }

    for (int i = 0; i < particle10Count; i++) {
      size = 4;

      if (random(0, 1) < 0.25) { //essentially just adding some random coin flip that is skewed to lose so that the pollen doesnt overwhelm the sketch
        particles.add(new Particle(random(width), random(height), light, temp, size, true));
      } else {
        particles.add(new Particle(random(width), random(height), light, temp, size, false));
      }
    }
  }
  println("Particles In Sketch:", particles.size());
}

void draw() {
  //println("FPS", frameRate);
  scale = 1 + abs(int(map(wind, 5, 180, 100, 5)));
  cols = floor(width / scale) + 1;
  rows = floor(height / scale) + 1;
  flowField = new PVector [cols*rows];

  xoff = xoff + .01;
  float alpha = map(noise(xoff), 0, 1, 4, 90);
  fill(264, 100, 12, alpha);
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

      //___________________________Set how strictly the particle will follow the direction of the flowfield 
      //(Higher the value the strictier it will follow the direction)
      v.setMag(map(scale, 100, 5, .05, .12)); // was.12=======================================================================================map

      //Add the calculated vector to the flowfield
      flowField[index] = v;
      xoff += inc;

      //push();
      //translate(x * scale, y * scale);
      //stroke(255);
      //rotate(angle);
      //line(0, 0, scale, 0);
      //pop();
    }
    yoff += inc;

    //change this value to increase the speed of change in the flowfield noise
    zoff += 0.0001; ////////========set this back to 0.0001
  }

  //loop through particle object methods to generate the visuals
  for (int i = 0; i < particles.size(); i++) {
    particles.get(i).flow(flowField);
    particles.get(i).update(wind);
    particles.get(i).edges();
    particles.get(i).show(liveLight, randomArray(), particle2_5, particle10);
  }
}

void messageReceived(String topic, byte[] payload) {

  if (topic.equals("WetSoil")) {
    //println("WetSoil", int(new String(payload)));
  } else if (topic.equals("Lux")) {
    liveLight = int(new String(payload));
  } else if (topic.equals("Temp-degree")) {
    // println("Temperature", int(new String(payload)));
  } else if (topic.equals("Wind")) {
    wind = int(new String(payload));
  } else if (topic.equals("Particles2.5")) {
    particle2_5 = int(new String(payload));
  } else if (topic.equals("Particles10")) {
    particle10 = int(new String(payload));
  }
}


int [] randomArray() {
  int[] numbers = new int[5];
  numbers[0] = 250;
  numbers[1] = 250;
  numbers[2] = 250;
  numbers[3] = 250;
  numbers[4] = 250;

  numbers[int(map(mouseX, 0, width, 0, 5))] = 50;
  return numbers;
}
