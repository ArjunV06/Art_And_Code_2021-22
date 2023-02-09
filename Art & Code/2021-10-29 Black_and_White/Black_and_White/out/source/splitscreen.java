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

public class splitscreen extends PApplet {

int color1;
int color2;

public void setup()
{
    fill(255,0,230);
    
}
public void draw()
{
    if(mouseX>width/2+10)
    {
        color1=0;
        color2=255;
    }
    
    
    else if(mouseX<width/2-10)
    {
        color2=0;
        color1=255;
    }

    else if(mouseX>width/2-10 && mouseX<width/2+10)
    {
        color1=0;
        color2=0;
    }
    
    rectMode(CENTER);
    fill(78);
    rect(width/2,height/2,20,height);
    fill(color1);
    rect(width/4,height/2,width/2-10,height);
    fill(color2);
    rect(width-width/4,height/2,width/2-10,height);
}
  public void settings() {  size(800,800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "splitscreen" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
