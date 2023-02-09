//Arjun

void setup(){
  size(1500,1000);
  background(0);
  
}
void draw() {
  println(mouseX,mouseY);
  strokeWeight(5);
  stroke(255);
  noFill();
    beginShape();
  vertex(mouseX,mouseY-100);
  vertex(mouseX-30,mouseY-50);
  vertex(mouseX-100,mouseY-50);
  vertex(mouseX-40,mouseY);
  vertex(mouseX-70,mouseY+90);
  vertex(mouseX,mouseY+40);
  vertex(mouseX+70,mouseY+90);
  vertex(mouseX+40,mouseY);
  vertex(mouseX+100,mouseY-50);
  vertex(mouseX+30,mouseY-50);
  vertex(mouseX,mouseY-100);
  endShape(CLOSE);
  

}


  
void keyPressed(){
  background(0);
}
