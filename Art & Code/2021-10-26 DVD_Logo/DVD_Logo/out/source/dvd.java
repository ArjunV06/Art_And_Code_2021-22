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

public class dvd extends PApplet {


float xPos;
float yPos;
float yVel,xVel;
public void setup()
{
    boolean onX=false, onY=false;
    
    
    
    background(0);
    xPos=width/2;
    yPos=height/2+80;
    yVel=3;
    xVel=3;
}

int rColor=30;
int gColor=30;
int bColor=30;
public void draw()
{   
    
    
    
    background(0);
    println(xPos,yPos,width,height);
    fill(rColor,gColor,bColor);
    rectMode(CENTER);
    xPos+=xVel;
    yPos+=yVel;
    rect(xPos,yPos,100,100);
    if(xPos>=width-50|| xPos<=50)
    {
        xVel*=-1;
        rColor=(int)random(255);
        gColor=(int)random(255);
        bColor=(int)random(255);
        
    }
    if(yPos>=height-50 || yPos<=+50)
    {
        yVel*=-1;
        rColor=(int)random(255);
        gColor=(int)random(255);
        bColor=(int)random(255);
    }
    

}
  public void settings() {  size(1000,800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "dvd" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
