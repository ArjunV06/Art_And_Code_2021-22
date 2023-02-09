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

public class Lab_7f_Flatten_Student extends PApplet {

PImage img;

public void setup()     
{      
    img = loadImage("lantern.jpg");
    
}

public void draw() 
{
    image(img, 0, 0);
}

public void mouseClicked()
{
    img.loadPixels();
    for (int i=0;i<img.pixels.length; i++)
    {
        int c= img.pixels[i];
        int redVal = (int) red(c);
        int greenVal = (int) green(c);
        int blueVal = (int) blue(c);

        redVal = flatten(redVal, 80);
        greenVal = flatten(greenVal, 80);
        blueVal = flatten(blueVal, 80);

        img.pixels[i] = color(redVal, greenVal, blueVal);
    }
    img.updatePixels();
}

public int flatten(int val, int flatval)
{
    int returnval=val/flatval;
    returnval=returnval*flatval;
    return returnval;
}
  public void settings() {  size(800, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Lab_7f_Flatten_Student" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
