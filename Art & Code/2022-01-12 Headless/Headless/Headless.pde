//Name
Body one, two, three;
void setup()
{
  size(800, 600);
  background(255);
  one = new Body("one.png", 20, 75);
  one.display();
  two = new Body("two.png", 250, 250);
  two.display();
  three = new Body("three.png", 500, 100);
  three.display();
}

void draw()
{
  
}


  
  //drawCurve(mouseX,mouseY);
  

void mousePressed()
{
  drawCurve(mouseX,mouseY);
}
//Write your action method to draw a head at a given a location (needs parameters)
void drawCurve(int x, int y)
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