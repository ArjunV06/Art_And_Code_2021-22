void setup(){
  size(1500,1000);
  background(0);
}

int col=1;
int strokew=1;


/*void keyPressed(){
background(0,255,0);
}*/

  void mousePressed(){
    col=color(0);
    strokew=30;
  }
  void mouseReleased(){
    col=color(255);
strokew=1;  
}

void draw(){
  
  
  
  stroke(col);
  strokeWeight(abs(pmouseX-mouseX));
  line(pmouseX,pmouseY,mouseX,mouseY);
}
