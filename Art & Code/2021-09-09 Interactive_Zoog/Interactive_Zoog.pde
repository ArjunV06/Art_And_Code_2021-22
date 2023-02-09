//Arjun?

void setup(){
size(800, 500);

ellipseMode(CENTER);
rectMode(CENTER);
}

void draw(){

 background(255);
stroke(0);
fill(150);
rect(mouseX, mouseY+45, 20, 100);
 fill(255);
ellipse(mouseX, mouseY+15, 60, 60);
 fill(0);
ellipse(mouseX-19, mouseY+15, 16, 32);
ellipse(mouseX+19, mouseY+15, 16, 32);
stroke(0);
      line(mouseX-10, mouseY+95, pmouseX-20, pmouseY+225);
      line(mouseX+10, mouseY+95, pmouseX+20, pmouseY+225);
}
