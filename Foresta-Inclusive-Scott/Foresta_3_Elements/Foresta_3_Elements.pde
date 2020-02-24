import mqtt.*;
MQTTClient client;

//declare objects
Element water;
Element light;
Element temperature;

//declare variables that will hold the live data
float wetSoilData;
float lightData;
float tempData;

void setup () {
  background(0, 0, 100);
  fullScreen();
  //iniatilize each element with the chosen color and range the values should be mapped to
  water = new Element(175, 300, 700, 0, 100); //blue
  light = new Element(40, 0, 100, 0, 100); //orange
  temperature = new Element(129, -30, 30, 0, 100); //green

  //connect to shiftr
  client = new MQTTClient(this);
  client.connect("mqtt://buddadweet~Foresta-Inclusive@broker.shiftr.io", "processing-sketch");
  client.subscribe("WetSoil"); //values between 0-800
  client.subscribe("Light"); // values between 0-800(ish) (hands covering sensor = 200, light but in shade =600
  client.subscribe("Temperature"); // remapped the v
  

  //pixelDensity(2); //makes sketch retina display friendly (disable if not on retina display)
  colorMode(HSB, 360, 100, 100);
}

void draw () {

  //the move method is perlin noise in action moving the circle
  water.move();

  //the display(insert element method name here) changes the color of the circle based
  //on the type of data, each data source is mapped to a different range for accuracy
  water.display(wetSoilData);

  light.move();
  light.display(lightData);

  temperature.move();
  temperature.display(tempData);
}


//function that recieves shiftr messages and sends the data to the respective global var
//so that the element object can use it
void messageReceived(String topic, byte[] payload) {
  if (topic.equals("WetSoil")) {
    wetSoilData = int(new String(payload));
  } else if (topic.equals("Light")) {
    lightData = int(new String(payload));
  } else if (topic.equals("Temperature")) {
    tempData = int(new String(payload));
  }
  println(topic, new String(payload));
}
