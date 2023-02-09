int lightningTrigger1=0;
int lightningTrigger2=0;
int lightningTrigger3=0;
int lightningTrigger4=0;
int lightningTrigger5=0;
int lightningTrigger6=0;
BackgroundAnimation bubbleMaker3 = new BackgroundAnimation(18, "bubblemaker");
BackgroundAnimation bubbleMaker2 = new BackgroundAnimation(18,"bubblemaker");
BackgroundAnimation bubbleMaker = new BackgroundAnimation(18,"bubblemaker");
BackgroundAnimation distantLightning = new BackgroundAnimation(18, "distantlightning");
BackgroundAnimation largeLightning = new BackgroundAnimation(18,"largelightning");
BackgroundAnimation smallLightning = new BackgroundAnimation(18, "smalllightning");
PImage photo;



void setup() {
  frameRate(60);
  size(1920, 1080);
  bubbleMaker3.Initialize(16,40);
  bubbleMaker2.Initialize(16,40);
  bubbleMaker.Initialize(16,40);
  largeLightning.Initialize(320,240);
  smallLightning.Initialize(160,160);
  distantLightning.Initialize(100,100);
  photo = loadImage("background.png");
  
  
}
int i=0;
void draw() {

  image(photo, 0, 0);
  //println(frameRate);

 
  //if(frameCount%4==0)
  //{
    if(largeLightning.Running()==false)
    {
      lightningTrigger1=(int)random(100);
      largeLightning.DisplayStatic(200,620);
    }  
    if(smallLightning.Running()==false)
    {
      lightningTrigger2=(int)random(100);
      smallLightning.DisplayStatic(1700,680);
    }

    if(distantLightning.Running()==false)
    {
      lightningTrigger3=(int)random(100);
      distantLightning.DisplayStatic(815,475);
    }
    if(bubbleMaker.Running()==false)
    {
      lightningTrigger4=(int)random(100);
      bubbleMaker.DisplayStatic(1100,800);
    }
    if(bubbleMaker2.Running()==false)
    {
      lightningTrigger5=(int)random(70);
      bubbleMaker2.DisplayStatic(1080,790);
    }
    if(bubbleMaker3.Running()==false)
    {
      lightningTrigger6=(int)random(90);
      bubbleMaker3.DisplayStatic(1120,790);
    }
    
  //}
  if(lightningTrigger1==1)
  {
    largeLightning.DisplayAnimation(200,620);
  }
  
  if(lightningTrigger2==2)
  {
    smallLightning.DisplayAnimation(1700,680);
  }

  if(lightningTrigger3==3)
  {
    distantLightning.DisplayAnimation(815,475);
  }
  
  if(lightningTrigger4==4)
  {
    bubbleMaker.DisplayAnimation(1100,800);
  }
  if(lightningTrigger5==5)
  {
    bubbleMaker2.DisplayAnimation(1080,790);
  }
  if(lightningTrigger6==6)
  {
    bubbleMaker3.DisplayAnimation(1120,790);
  }





  //for requirement part

  
  if(i==0){rect(100,100,200,200);}
  if(i==1){rect(100,100,100,100);}
  if(i==2){rect(100,100,60,60);}
  if(i==3){rect(100,100,100,100);}
  if(i==4){rect(100,100,200,200);}
  if(frameCount%3==0){i++;}
  if(i==4){i=0;}
  
}
