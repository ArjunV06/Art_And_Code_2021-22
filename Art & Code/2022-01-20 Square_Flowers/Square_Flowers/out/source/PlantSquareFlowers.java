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

public class PlantSquareFlowers extends PApplet {

public void setup() {
  
  rectMode(CENTER);
  frameRate(300);
  stroke(30, 40);
  fill(255, 100, 50);
}

public void draw () {
  println(frameRate);
  background(255);
  drawFlower(width/2,height/2,255,255,255,30);
  drawFlower(300,400,0,20,11,90);
  drawFlower(900,200,60,60,60,1);
  drawFlower(600,900,40,40,40,40);
  drawFlower(500,500,90,60,30,10);
  drawFlower(700,1300,200,100,0,100);
  
}

/* create your drawFlower method here
*  
*  The drawFlower method takes 6 parameters. It needs an (x,y) position.
*  It needs to get the r, g, b values for the flower and it needs
*  to know the rate of spin as a float.
*  
*  In your method
*      make the given x and y position the new origin
*      write a loop that starts at 200 and counts down to 0 by 10's.
*          call fill by reducing the g and b values by your loop counter ex. fill(r, g-counter, b-counter)
*          set your color for the rectangle you are going to draw
*          rotate the rectangle by the sum of mouseX and mouseY divided by your spin rate
*          draw your rectangle at the origin and the current size of your loop counter
*/
public void drawFlower(int x, int y, int r, int g, int b, float spinRate)
{
  pushMatrix();
  
  
  translate(x,y);
  for(int i=200; i>0; i-=10)
  {
    fill(r,g-i,b-i);

    
    rotate((mouseX+mouseY)/spinRate);
    rect(0,0,i,i);
  }
  popMatrix();
}
  public void settings() {  size(1800, 1800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "PlantSquareFlowers" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
