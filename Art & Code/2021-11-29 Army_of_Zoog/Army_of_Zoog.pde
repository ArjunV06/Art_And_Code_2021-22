
size(500, 500);
background(255);
ellipseMode(CENTER);
rectMode(CENTER);
for(int i=0;i<width-19;i+=60) 
{
//Body
stroke(0);
fill(150);
rect(19+i, 145, 20, 100);
 
//Head
fill(255);
ellipse(19+i, 115, 60, 60);
 
//Eyes
fill(0);
ellipse(0+i, 115, 16, 32);
ellipse(38+i, 115, 16, 32);
 
//Legs
stroke(0);
line(9+i, 195, -1+i, 205);
line(29+i, 195, 41+i, 205);
}