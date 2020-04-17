import mqtt.*;
MQTTClient client;

int scale = 30; // -----------------------------change this for density of flowfield
int cols;
int rows;
float inc = 0.07;
float zoff = 0;
float wind;
//array list that contains the particle objects
ArrayList<Particle> particles = new ArrayList<Particle>();
//array of vectors that makes up the flow field
PVector [] flowField;

Table table;

float xoff = 0.0;

int liveLight;

void setup() {
  size(1000, 1000, P2D);
  //fullScreen(P2D);


  client = new MQTTClient(this);
  client.connect("mqtt://buddadweet~Foresta-Inclusive-Ethernet@broker.shiftr.io", "processing-sketch");
  client.subscribe("WetSoil"); //values between 0-800
  client.subscribe("Lux"); // values between 0-800(ish) (hands covering sensor = 2, light but in shade =6000, strong light =13000
  client.subscribe("TempSoil"); // remapped the values to produce between -30 and 30 degrees. Value not 100% accurate
  client.subscribe("Wind"); 


  background(20, 0, 50);


  table = loadTable("data/sensor_data.csv", "header");// excel type file

  for (TableRow row : table.rows()) {//reads data down the collumns
    for (int i = 0; i < 30; i++) { // change the # to change the amount of particles //reads the same row multiple times
      float light = row.getFloat("light");
      float temp = row.getFloat("temp");


      particles.add(new Particle(random(width), random(height), light, temp));
    }
  }

 
}

void draw() {

  scale = 1 + abs(int(map(wind, 70, 180, 80, 5))); // this scales
  
  cols = floor(width / scale) + 1;
  rows = floor(height / scale) + 1;
  flowField = new PVector [cols*rows];
  //println(flowField.length);
  
  //println(frameRate);
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

      //___________________________Set how strictly the particle will follow the direction of the flowfield 
      //(Higher the value the strictier it will follow the direction)
      v.setMag(.05); // was.12

      //Add the calculated vector to the flowfield
      flowField[index] = v;
      xoff += inc;
      
      push(); //comment out to not see lines
      translate(x * scale, y * scale);
      stroke(255);
      rotate(angle);
      line(0, 0, scale, 0);
      pop();
    }
    yoff += inc;

    //change this value to increase the speed of change in the flowfield noise
    zoff += 0.0001; ////////========set this back to 0.0001
  }

  //loop through particle object methods to generate the visuals
  for (int i = 0; i < particles.size(); i++) {
    particles.get(i).flow(flowField);
    particles.get(i).update();
    particles.get(i).edges();
    particles.get(i).show(liveLight);
  }
}

void messageReceived(String topic, byte[] payload) {

  if (topic.equals("WetSoil")) {
    println("WetSoil", int(new String(payload)));
  } else if (topic.equals("Lux")) {
    println("Lux", int(new String(payload)));
    liveLight = int(new String(payload));
  } else if (topic.equals("TempSoil")) {
    println("TempSoil", int(new String(payload)));
  } else if (topic.equals("Wind")) {
    println("Wind", int(new String(payload)));
    wind = int(new String(payload));
      println("Scale", scale);

  }
}
