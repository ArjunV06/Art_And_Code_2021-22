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

public class foursquare extends PApplet {

public void setup()
{
    fill(255);
    
}
public void draw()
{
    background(0);
    rectMode(CENTER);
    fill(255);
    rectMode(CENTER);
    rect(width/2,height/2,width,10);
    rect(width/2,height/2,10,height);
    if(mouseX>width/2 && mouseY>height/2)
    {
        fill(0,0,255);
        rect(width-width/4,height-height/4,width/2-5,height/2-5);
    }
    
    else if(mouseX<width/2 && mouseY>height/2)
    {
        fill(0xffFFFF00);
        rect(width/4,height-height/4,width/2-5,height/2-5);
    }
    else if(mouseX>width/2 && mouseY<height/2)
    {
        fill(0xff00FF00);
        rect(width-width/4,height/4,width/2-5,height/2-5);
    }
    else
    {
        fill(0xffFF0000);
        rect(width/4,height/4,width/2-5,height/2-5);
    }
    
}   
  public void settings() {  size(1920,1080); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "foursquare" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
