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

public class gridMap extends PApplet {
  public void setup() {

background(255);
stroke(255,0,0);
strokeWeight(5);
line(width/2,height,width/2,0);
line(0,height/2,width,height/2);
stroke(0);
strokeWeight(1);
for(int i=0; i<width; i+=10)
{
    line(i,height,i,0);
}
for(int i=0; i<height; i+=10)
{
    line(0,i,width,i);
}
    noLoop();
  }

  public void settings() { size(200,100); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "gridMap" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
