import com.leapmotion.leap.*;
//documentation for the Java API - https://developer-archive.leapmotion.com/documentation/java/api/gen-java/classcom_1_1leapmotion_1_1leap_1_1_controller.html
 
int width = 600;
int height = 600;
color canvasColor = #5005ff; // background colour
float alphaVal = 10; // between 0-255 - 10 is the best value
 
Controller leap = new Controller(); //The Controller class is your main interface to the Leap Motion Controller.
//this controls one leap motion
 
void setup()
{
   frameRate(60);
   size(600, 600);
   background(canvasColor);
   stroke(0xf5f2fa); // default is black - so this sets it to white (ps black looks neat)
}
 
 
void draw(){
  Frame frame = leap.frame(); //The Frame class represents a set of hand and finger tracking data detected in a single frame.
  //Frame is a class capable of storing one frame of 3D points (named "frame") - filled by what leap.frame sends me
  Pointable pointer = frame.pointables().frontmost(); //The Pointable class reports the physical characteristics of a detected finger or tool
  // Pointable is a class capable of storing the characteristics (whether it is a finger, position, etc...) of a pointed thing - (named "pointer") - 
  //filled by the front most pointer as seen by leap
  if( pointer.isValid() ) // this is a boolean
  {
 
    color frontColor = color(245, 242, 250, alphaVal ); // set the fill colour and define the opacity
 
    InteractionBox iBox = frame.interactionBox();//The InteractionBox class represents a box-shaped region completely within the field of view of the Leap Motion controller
    // A class that stores the interaction zone (named "iBox") as seen by leap

    Vector tip = iBox.normalizePoint(pointer.tipPosition()); // Vector = three floats ->X, Y, Z coordinate b/w 0 and 1
    //The Vector struct (class) represents a three-component mathematical vector or point such as a direction or position in three-dimensional space
    // named "tip"
    fingerPaint(tip, frontColor); // fingerPaint below (tip, frontColor (from line 30))

/* This is a Break down of above (with different names to help explain the concepts - 
    step one:
    Vector tip = pointer.tipPosition(); This gets tip value
    step two
    Vector normalizedTip = iBox.normalizePoint(tip); normalize the tip value by transforming it into values b/w 0 and 1 (using a percentage)
    fingerPaint(normalizedTip, frontColor);
*/
  }
}
 
void fingerPaint(Vector tip, color frontColor) // gets the values from fingerPaint(tip, frontColor) above
{ 
  fill(frontColor);
    float x = tip.getX() * width; // define X - The horizontal component. Here we need to de-normalize it - times the value b/w 0 and 1 (so for example .87)
    // When you multiply it by width you get the position relative to the width
    float y = height - tip.getY() * height; // the leap motion defines from bottom and Processing defines Y from top. this reverses the values 
    ellipse( x, y, tip.getZ()*100, tip.getZ()*100);   // X and y defines location and the second two values determin width and height
//https://developer-archive.leapmotion.com/documentation/java/api/gen-java/classcom_1_1leapmotion_1_1leap_1_1_vector.html
// See the info on vector to understand getX()
}
 
void keyPressed()
{
   background(canvasColor);
}
