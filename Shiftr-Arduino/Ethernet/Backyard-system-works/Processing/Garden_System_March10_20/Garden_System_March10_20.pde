
import mqtt.*;
int soilHumidity; // holds values for WetSoil
int lightSensor;  // holds values for Light
int soilTemp;  //holds values for Temperature


int moistureThreshold = 540;  // This holds the threshold for the soil - change here and reupload
int valveTime = 4000;  // The amount of time between each time the valve is actuated (seconds)

/* sensors used:
https://www.vegetronix.com/Products/VH400/
https://www.vegetronix.com/Products/THERM200/
https://www.vegetronix.com/Products/VG-DARK/
*/

MQTTClient client;

void setup() {
  client = new MQTTClient(this);
  
  client.connect("mqtt://c9f6b6d3:055ad1c0d8de9605@broker.shiftr.io", "ProcessingPlant-Jane");
  /*"mqtt://c9f6b6d3:055ad1c0d8de9605@broker.shiftr.io" is a token from the Foresta-Inclusive namespace
  This allows the client to publish and receive messages. The 'Processing-Jane' is the name of the client.
  Else - if I just want to receive values and not publish, just use "buddadweet~Foresta-Inclusive@broker.shiftr.io"*/
  
  client.subscribe("WetSoil"); //sensor produces values between 0-800
  client.subscribe("Light"); // produces values between 0-800(ish) (hands covering sensor = 200, light but in shade =600
  client.subscribe("Temperature"); // remapped the values to produce between -30 and 30 degrees. Value not 100% accurate
  // client.unsubscribe();
  
}

void draw() {}

void keyPressed() {
  client.publish("NewThreshold", str(int(moistureThreshold))); // sending to shiftr
  //Serial.print("moistureThreshold value: "); Serial.println(moistureThreshold);
  client.publish("ValveTime", str(int(valveTime)));
  //Serial.print("valveTime value : "); Serial.println(valveTime);
}

void messageReceived(String topic, byte[] payload) { // string name is 'topic', received as a byte - payload.
  //println("new message: " + topic + " - " + int( new String(payload))); // to see the incoming string values
  
  if (topic.equals("WetSoil")){ //  if topic string is WetSoil - then set the values received as a float. 
  soilHumidity= int(new String(payload));
  println("soilHumidity - " + (soilHumidity)); // print the values
  }
  if (topic.equals("Light")){
  lightSensor= int(new String(payload));
  println("lightSensor - " + (lightSensor));
  }
  if (topic.equals("Temperature")){
  soilTemp= int(new String(payload));
  println("soilTemp - " + (soilTemp));
  }

}
