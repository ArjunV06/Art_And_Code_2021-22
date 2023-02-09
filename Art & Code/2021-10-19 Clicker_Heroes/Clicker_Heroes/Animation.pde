class AnimationType {
  int imageNumber;
  int frame;
  int i;
  String name;
  String finalName;
  PImage mc;
  int sizeX;
  int sizeY;
  


  AnimationType(String nameSpecific, int imageNumberSpecific, int resizeX, int resizeY) {
    sizeX=resizeX;
    sizeY=resizeY;
    name=nameSpecific;
    imageNumber=imageNumberSpecific;
    i=imageNumber;
  }
  boolean Display() {
    boolean done=false;
    background(0);
    if ((float)frameCount%(float)3.5==0) {
      i++;
    }
    if (i==(imageNumber+1)) {
      i=0;
      done=true;
    }
    finalName=name+""+i+".png";
    mc=loadImage(finalName);
    mc.resize(sizeX, sizeY);
    image(mc, width/2+30, height/2-300);
    return done;
    
  }
}
