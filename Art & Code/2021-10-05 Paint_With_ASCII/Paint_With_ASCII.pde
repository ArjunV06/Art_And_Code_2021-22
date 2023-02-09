void setup() {
  size(1000,1000);
  background(0);
}

float size=5, red=0, green=0, blue=0;
char lettesr=64;
//void draw(){
//  lettesr=(char)random(64,90);
//  text(lettesr, mouseX, mouseY); 
//}
void draw(){

}
void mousePressed(){
  if (lettesr>89) {lettesr=(char)64;}
  lettesr=(char)(lettesr+1);
  red=(float)random(255);
  green=(float)random(255);
  blue=(float)random(255);
  fill(red,green,blue);
  size++;
  textSize(size);
  text(lettesr, mouseX, mouseY); 
}
