
void setup()
{
  size(255, 255);
  background(0);
}

void draw()
{
  background(0);
  
  int i=0;
  float distance;
  while(i<width)
  {
      //do the following things
      noStroke();
      //create a float called distance and initialize it to the absolute
        //value of the difference of the mouse's x position and i
        distance = abs(mouseX-i);
      fill(distance);
      //draw a rectangle at position (i, 0) width=10, height=height of window
      rect(i,0,10,height);
      //increase i by 10
      i+=10;
  }
}
