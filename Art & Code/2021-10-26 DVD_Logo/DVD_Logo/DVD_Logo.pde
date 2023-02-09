
float xPos;
float yPos;
float yVel,xVel;
void setup()
{
    boolean onX=false, onY=false;
    
    
    size(1000,800);
    background(0);
    xPos=width/2;
    yPos=height/2+80;
    yVel=3;
    xVel=3;
}

int rColor=30;
int gColor=30;
int bColor=30;
void draw()
{   
    
    
    
    background(0);
    println(xPos,yPos,width,height);
    fill(rColor,gColor,bColor);
    rectMode(CENTER);
    xPos+=xVel;
    yPos+=yVel;
    rect(xPos,yPos,100,100);
    if(xPos>=width-50|| xPos<=50)
    {
        xVel*=-1;
        rColor=(int)random(255);
        gColor=(int)random(255);
        bColor=(int)random(255);
        
    }
    if(yPos>=height-50 || yPos<=+50)
    {
        yVel*=-1;
        rColor=(int)random(255);
        gColor=(int)random(255);
        bColor=(int)random(255);
    }
    

}