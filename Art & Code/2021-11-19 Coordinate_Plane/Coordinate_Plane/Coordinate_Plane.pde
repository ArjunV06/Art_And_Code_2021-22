size(200,100);
background(255);
stroke(255,0,0);
strokeWeight(5);
line(width/2,height,width/2,0);
line(0,height/2,width,height/2);
stroke(0);
strokeWeight(1);
for(int i=0; i<width; i+=10)
{
    line(i,height,i,0);
}
for(int i=0; i<height; i+=10)
{
    line(0,i,width,i);
}