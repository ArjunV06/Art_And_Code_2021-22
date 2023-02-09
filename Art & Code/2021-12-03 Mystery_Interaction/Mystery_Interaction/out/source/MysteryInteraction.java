import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class MysteryInteraction extends PApplet {


public void setup()
{
  
  background(0);
}

public void draw()
{
  background(0);
  
  int i=0;
  float distance;
  while(i<width)
  {
      //do the following things
      noStroke();
      //create a float called distance and initialize it to the absolute
        //value of the difference of the mouse's x position and i
        distance = abs(mouseX-i);
      fill(distance);
      //draw a rectangle at position (i, 0) width=10, height=height of window
      rect(i,0,10,height);
      //increase i by 10
      i+=10;
  }
}
  public void settings() {  size(255, 255); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "MysteryInteraction" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
