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

public class forPractice extends PApplet {
  public void setup() {
 
background(0);
colorMode(HSB);
int colorVar=0;
int sizeVar=0;
for(int i=0; i<10; i++)
{
    if(i!=0){colorVar+=25;
    sizeVar+=50;}
    fill(colorVar,255,255);
    rect(sizeVar,290,40,40);
}

sizeVar=0;
colorVar=0;
for(int i=0; i<100; i++)
{
    if(i!=0){colorVar+=2;
    sizeVar+=5;}
    fill(colorVar,255,255);
    rect(sizeVar,210,4,40);
}
    noLoop();
  }

  public void settings() { size(500,500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "forPractice" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
