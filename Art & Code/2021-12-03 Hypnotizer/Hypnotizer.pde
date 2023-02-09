
void setup()
{
    size(1000,1000);
    background(0);
    frameRate(165);


}

void draw()
{   background(0);
    rectMode(CENTER);
    rect(mouseX,mouseY-100,10,200);
    for(int i=0;i<300;i+=10)
    {   
        
        rect(mouseX,mouseY-100,10,200);
        fill(random(255),random(255), random(255));     
        ellipse(mouseX,mouseY-350,300-i,300-i);
        
        

    }
    
}