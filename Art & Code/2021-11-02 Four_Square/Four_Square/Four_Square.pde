void setup()
{
    fill(255);
    size(1920,1080);
}
void draw()
{
    background(0);
    rectMode(CENTER);
    fill(255);
    rectMode(CENTER);
    rect(width/2,height/2,width,10);
    rect(width/2,height/2,10,height);
    if(mouseX>width/2 && mouseY>height/2)
    {
        fill(0,0,255);
        rect(width-width/4,height-height/4,width/2-5,height/2-5);
    }
    
    else if(mouseX<width/2 && mouseY>height/2)
    {
        fill(#FFFF00);
        rect(width/4,height-height/4,width/2-5,height/2-5);
    }
    else if(mouseX>width/2 && mouseY<height/2)
    {
        fill(#00FF00);
        rect(width-width/4,height/4,width/2-5,height/2-5);
    }
    else
    {
        fill(#FF0000);
        rect(width/4,height/4,width/2-5,height/2-5);
    }
    
}   