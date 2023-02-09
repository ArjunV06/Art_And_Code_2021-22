//Arjun and Cal


void setup(){
  size(1000,1000);
  background(255);
}
float twenty=20;
float one=1;
float twohundred=200;
float speedy = 1;
float fifty=50;
float twofiftyfive=255;
float pointone=0.1;
float zero=0;
float onethousand=1000;
void draw(){
  float low = twenty;
  low = low + one;
  float bubbleSize;
//  bubbleSize=2;
float high = twohundred;
high = high + one;
  
 
  float bubbleColorRed;
  float bubbleColorGreen;
  float bubbleColorBlue;
  bubbleColorRed=(float)random(fifty,twofiftyfive);
  bubbleColorGreen=(float)random(fifty,twofiftyfive);
  bubbleColorBlue=(float)random(fifty,twofiftyfive);
  bubbleSize=(float)random(low,high);
  frameRate(speedy);
  speedy=speedy+pointone;
  float xPos;
  float yPos;
  xPos=fifty;
  yPos=fifty;
  xPos = (float) random(zero,onethousand);
  yPos = (float) random(zero,onethousand);
  
  
  
  
  fill(bubbleColorRed,bubbleColorGreen,bubbleColorBlue);
  ellipse(xPos,yPos,bubbleSize,bubbleSize);
 
}
