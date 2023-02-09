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

public class Clock extends PApplet {

public void setup()
{
    
    surface.setResizable(true);
    background(0);
    fill(80);
    
}
public void draw()
{
    println(hour(),minute(),second());
    background(0);
    pushMatrix();
    translate(width/2,height/2);
    rotate(radians(180));
    if(width<height)
    ellipse(0, 0, width/1.4f, width/1.4f);
    else
    ellipse(0,0,height/1.4f,height/1.4f);
    drawSecond();
    drawMinute();
    drawHour();
    drawLines();
    
    popMatrix();

}
public void drawLines()
{
     for(int i=0; i<60; i++)
    {
        //println(i);
        pushMatrix();
        rotate(radians(i*6));
        pushStyle();
        fill(0xffc2d1ca);
        noStroke();
        //strokeWeight(5);
        if(width<height)
        ellipse(0,-1*(width/3.2f),width/80,width/80);
        else
        ellipse(0,-1*(height/3.2f),height/80,height/80);
        popStyle();
        popMatrix();
    }
    
}
public void drawHour()
{
    pushStyle();
    pushMatrix();
    strokeWeight(5);
    if(hour()>=12)
    {
        rotate(radians((hour()-12)*30.0f));
    }
    else
    {
    rotate(radians((hour()-0)*30.0f));
    }
    if(width<height)
    {
        line(0,0,0,width/5);
    }
    else 
    {
        line(0,0,0,height/5);
    }
    
    popMatrix();
    popStyle();
}
public void drawMinute()
{
    pushStyle();
    strokeWeight(3);
    pushMatrix();
    stroke(130);
    rotate(radians(minute()*6.0f));
    if(width<height)
    line(0,0,0,width/4);
    else 
    line(0,0,0,height/4);
    
    
    popMatrix();
    popStyle();
}
public void drawSecond()
{
    pushStyle();
    fill(255,0,0);
    stroke(255,0,0);
    pushMatrix();
    rotate(radians(second()*6.0f));
    if(width<height)
    line(0,0,0,width/3.2f);
    else 
    line(0,0,0,height/3.2f);    
    
    popMatrix();
    popStyle();
    
}

  public void settings() {  size(1440,1440);  smooth(8); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Clock" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
