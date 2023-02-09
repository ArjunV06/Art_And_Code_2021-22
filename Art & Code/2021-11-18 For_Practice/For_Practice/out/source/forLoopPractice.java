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

public class forLoopPractice extends PApplet {
  public void setup() {
for(int i=0;i<26;i++)
{
    print(i+"\t");
}
println("\n"+"\n");
for(int i=10; i>0; i--)
{
    print(i+"\t");
}
println("\n"+"\n");
for(int i=1;i<40;i+=2)
{
    print(i+"\t");
}
println("\n"+"\n");
for(int i=0;i<41;i+=2)
{
    print(i+"\t");
}
println("\n"+"\n");
for(int i=0;i<200;i+=10)
{
    print(i+" ");
}
println("\n"+"\n");
for(int i=-10;i>-21;i--)
{
    print(i+"\t");
}
println("\n"+"\n");
for(int i=97; i<123; i++)
{
    print((char)i+"\t");
}
    noLoop();
  }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "forLoopPractice" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
