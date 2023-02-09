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

public class Headless_Student extends PApplet {

//Name
Body one, two, three;
public void setup()
{
  
  background(255);
  one = new Body("one.png", 20, 75);
  one.display();
  two = new Body("two.png", 250, 250);
  two.display();
  three = new Body("three.png", 500, 100);
  three.display();
}

public void draw()
{
  
}


  
  //drawCurve(mouseX,mouseY);
  

public void mousePressed()
{
  drawCurve(mouseX,mouseY);
}
//Write your action method to draw a head at a given a location (needs parameters)
public void drawCurve(int x, int y)
{
  pushStyle();
  strokeWeight(3);
  
  
  noFill();
  ellipse(x+10, y, 80, 80);
  fill(255);
  bezier(x,y,x-44,y+16,x-42,y+32,x+5,y+12);
 
  fill(0);
  ellipse(x-5,y-10,10,10);
  ellipse(x+10,y-10,10,10);
  strokeWeight(10);
  line(x-3,y+25,x+23,y+25);
  popStyle();
}
class Body{
  
  PImage body;
  int x, y;
  
  Body(String file, int start_x, int start_y){
    body = loadImage(file);
    x = start_x;
    y = start_y;
  }
  
  public void display(){
    image(body, x, y);
  }
}
  public void settings() {  size(800, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Headless_Student" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
