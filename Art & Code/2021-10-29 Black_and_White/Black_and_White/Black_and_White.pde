int color1;
int color2;

void setup()
{
    fill(255,0,230);
    size(800,800);
}
void draw()
{
    if(mouseX>width/2+10)
    {
        color1=0;
        color2=255;
    }
    
    
    else if(mouseX<width/2-10)
    {
        color2=0;
        color1=255;
    }

    else if(mouseX>width/2-10 && mouseX<width/2+10)
    {
        color1=0;
        color2=0;
    }
    
    rectMode(CENTER);
    fill(78);
    rect(width/2,height/2,20,height);
    fill(color1);
    rect(width/4,height/2,width/2-10,height);
    fill(color2);
    rect(width-width/4,height/2,width/2-10,height);
}