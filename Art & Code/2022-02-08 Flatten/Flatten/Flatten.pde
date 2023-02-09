PImage img;

void setup()     
{      
    img = loadImage("lantern.jpg");
    size(800, 600);
}

void draw() 
{
    image(img, 0, 0);
}

void mouseClicked()
{
    img.loadPixels();
    for (int i=0;i<img.pixels.length; i++)
    {
        color c= img.pixels[i];
        int redVal = (int) red(c);
        int greenVal = (int) green(c);
        int blueVal = (int) blue(c);

        redVal = flatten(redVal, 80);
        greenVal = flatten(greenVal, 80);
        blueVal = flatten(blueVal, 80);

        img.pixels[i] = color(redVal, greenVal, blueVal);
    }
    img.updatePixels();
}

int flatten(int val, int flatval)
{
    int returnval=val/flatval;
    returnval=returnval*flatval;
    return returnval;
}