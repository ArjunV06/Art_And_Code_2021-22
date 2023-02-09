void setup()
{
    size(1440,1440);
    surface.setResizable(true);
    background(0);
    fill(80);
    smooth(8);
}
void draw()
{
    println(hour(),minute(),second());
    background(0);
    pushMatrix();
    translate(width/2,height/2);
    rotate(radians(180));
    if(width<height)
    ellipse(0, 0, width/1.4, width/1.4);
    else
    ellipse(0,0,height/1.4,height/1.4);
    drawSecond();
    drawMinute();
    drawHour();
    drawLines();
    
    popMatrix();

}
void drawLines()
{
     for(int i=0; i<60; i++)
    {
        //println(i);
        pushMatrix();
        rotate(radians(i*6));
        pushStyle();
        fill(#c2d1ca);
        noStroke();
        //strokeWeight(5);
        if(width<height)
        ellipse(0,-1*(width/3.2),width/80,width/80);
        else
        ellipse(0,-1*(height/3.2),height/80,height/80);
        popStyle();
        popMatrix();
    }
    
}
void drawHour()
{
    pushStyle();
    pushMatrix();
    strokeWeight(5);
    if(hour()>=12)
    {
        rotate(radians((hour()-12)*30.0));
    }
    else
    {
    rotate(radians((hour()-0)*30.0));
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
void drawMinute()
{
    pushStyle();
    strokeWeight(3);
    pushMatrix();
    stroke(130);
    rotate(radians(minute()*6.0));
    if(width<height)
    line(0,0,0,width/4);
    else 
    line(0,0,0,height/4);
    
    
    popMatrix();
    popStyle();
}
void drawSecond()
{
    pushStyle();
    fill(255,0,0);
    stroke(255,0,0);
    pushMatrix();
    rotate(radians(second()*6.0));
    if(width<height)
    line(0,0,0,width/3.2);
    else 
    line(0,0,0,height/3.2);    
    
    popMatrix();
    popStyle();
    
}

