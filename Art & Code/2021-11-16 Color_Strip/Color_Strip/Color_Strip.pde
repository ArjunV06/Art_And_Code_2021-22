size(500,500); 
background(0);
colorMode(HSB);
int colorVar=0;
int sizeVar=0;
for(int i=0; i<10; i++)
{
    if(i!=0){colorVar+=25;
    sizeVar+=50;}
    fill(colorVar,255,255);
    rect(sizeVar,290,40,40);
}

sizeVar=0;
colorVar=0;
for(int i=0; i<100; i++)
{
    if(i!=0){colorVar+=2;
    sizeVar+=5;}
    fill(colorVar,255,255);
    rect(sizeVar,210,4,40);
}
