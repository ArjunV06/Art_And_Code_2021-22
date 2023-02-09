float opacity1=1;
float opacity2=30;
float opacity3=230;
float opacity4=78;
float opacity5=130;
float opacity6=70;
float opacity7=190;
boolean updown = true;
boolean updown2 = true;
boolean updown3=true;
boolean updown4=true;
boolean updown5=true;
boolean updown6=true;
boolean updown7=true;

void setup() {
  size(1000,1000);
  background(0);
  fill(102);
}

  float conex;
  float coney;
  float conex1;
  float coney1;
  float conex2;
  float coney2;
  float aquax;
  float aquay;
  float yellowx,yellowy,vanillax,vanillay;
  int rotnum=1;
  float num;

void draw() {
  strokeWeight(1);
  println(mouseX,mouseY);
  ellipseMode(CENTER);
  background(0);
  noStroke();
  fill(255,255,255,opacity1);
  ellipse(200,200,10,10);
  fill(255,255,255,opacity2);
  ellipse(230,100,15,15);
  fill(255,255,255,opacity3);
  ellipse(55,153,3,3);
  fill(255,255,255,opacity4);
  ellipse(141,140,12,12);
  fill(255,255,255,opacity5);
  ellipse(378,116,9,9);
  fill(255,255,255,opacity6);
  ellipse(110,52,11,11);
  fill(255,255,255,opacity7);
  ellipse(314,12,13,13);
  fill(255,255,255,opacity1);
  ellipse(514,200,10,10);
  fill(255,255,255,opacity2);
  ellipse(576,100,15,15);
  fill(255,255,255,opacity3);
  ellipse(450,153,3,3);
  fill(255,255,255,opacity4);
  ellipse(981,140,12,12);
  fill(255,255,255,opacity5);
  ellipse(786,116,9,9);
  fill(255,255,255,opacity6);
  ellipse(378,52,11,11);
  fill(255,255,255,opacity7);
  ellipse(980,12,13,13);
  fill(255,255,255,opacity1);
  ellipse(860,200,10,10);
  fill(255,255,255,opacity2);
  ellipse(756,100,15,15);
  fill(255,255,255,opacity3);
  ellipse(467,153,3,3);
  fill(255,255,255,opacity4);
  ellipse(976,140,12,12);
  stroke(255,255,255);
  line(400,1000,500,800);
  line(600,1000,500,800);
  line(500,800,500,500);
  fill(0,0,0);
  ellipse(500,450,150,150);
  line(400,600,600,750);
  line(480,425,480,450);
  line(520,425,520,450);
  line(505,465,495,465);
  line(495,465,505,450);
  noFill();
  arc(500, 475, 50, 50, 0, PI);
  stroke(255,0,0);
  strokeWeight(5);
  line(500,375,500,350);
  line(500,375,520,360);
  line(500,375,480,360);
  strokeWeight(3);
  stroke(#E8AF83);
  fill(#E5BEA0);
  noStroke();
  //aqua ice cream
  //fill(#5BFACB);
  //ellipse(385,535,40,40);
  
  //yellow ice cream
  //fill(#E6EA21);
  //ellipse(410,535,41,41);
  
  //vanilla ice cream
  //fill(#FCFFD6);
  //ellipse(395,505,45,45);
  
  //triangle(400,600,375,550,425,550);
  
  
  stroke(#E8AF83);
  fill(#E5BEA0);
  

  
if(rotnum % 180 != -1){
rotnum=rotnum-1;
}

  
  
  pushMatrix();
 
  
  
  fill(#E5BEA0);
  translate(400,600);
  rotate(radians(rotnum));
  conex=0;
  coney=0;
  conex1=conex-25;
  conex2=conex+25;
  coney1=coney-50;
  coney2=coney-50;
  aquax=conex-15;
  aquay=coney-65;
  yellowx=conex+10;
  yellowy=coney-65;
  vanillax=conex-5;
  vanillay=coney-85;
  
  triangle(conex,coney,conex1,coney1,conex2,coney2);
  fill(#5BFACB);
  noStroke();
  ellipse(aquax,aquay,40,40);
  fill(#E6EA21);
  ellipse(yellowx,yellowy,41,41);
  fill(#FCFFD6);
  ellipse(vanillax,vanillay,45,45);
  
  popMatrix();
  
  


if(rotnum % 180 == -1){

num=num+1;}

if(num==90){rotnum=rotnum-1;
num=0;
}
    
  
  
  //star1
 if (updown==true){
    if (opacity1>0 && opacity1<254){
      opacity1=opacity1+1;
    }
  
    else {
      updown=false;
    }
 }
 
 else{
   if (opacity1==254) {
       opacity1=opacity1-1;
   }
   if (opacity1==255){
       opacity1=opacity1-1;
 }
   if(opacity1>255){
       opacity1=opacity1-1;
}
  if(opacity1<254 && opacity1>10){
  opacity1=opacity1-1;
 }
   else {
     updown=true;
   }

 
}

//star2

if (updown2==true){
    if (opacity2>0 && opacity2<190){
      opacity2=opacity2+1;
    }
  
    else {
      updown2=false;
    }
 }
 
 else{
   if (opacity2==190) {
       opacity2=opacity2-1;
   }
   if (opacity2==191){
       opacity2=opacity2-1;
 }
   if(opacity2>191){
       opacity2=opacity2-1;
}
  if(opacity2<191 && opacity2>10){
  opacity2=opacity2-1;
 }
   else {
     updown2=true;
   }

 
}

//star3

 if (updown3==true){
    if (opacity3>0 && opacity3<254){
      opacity3=opacity3+1;
    }
  
    else {
      updown3=false;
    }
 }
 
 else{
   if (opacity3==254) {
       opacity3=opacity3-1;
   }
   if (opacity3==255){
       opacity3=opacity3-1;
 }
   if(opacity3>255){
       opacity3=opacity3-1;
}
  if(opacity3<254 && opacity3>10){
  opacity3=opacity3-1;
 }
   else {
     updown3=true;
   }

 
}


//star4


 if (updown4==true){
    if (opacity4>0 && opacity4<254){
      opacity4=opacity4+1;
    }
  
    else {
      updown4=false;
    }
 }
 
 else{
   if (opacity4==254) {
       opacity4=opacity4-1;
   }
   if (opacity4==255){
       opacity4=opacity4-1;
 }
   if(opacity4>255){
       opacity4=opacity4-1;
}
  if(opacity4<254 && opacity4>10){
  opacity4=opacity4-1;
 }
   else {
     updown4=true;
   }

 
}

//star5

 if (updown5==true){
    if (opacity5>0 && opacity5<254){
      opacity5=opacity5+1;
    }
  
    else {
      updown5=false;
    }
 }
 
 else{
   if (opacity5==254) {
       opacity5=opacity5-1;
   }
   if (opacity5==255){
       opacity5=opacity5-1;
 }
   if(opacity5>255){
       opacity5=opacity5-1;
}
  if(opacity5<254 && opacity5>10){
  opacity5=opacity5-1;
 }
   else {
     updown5=true;
   }

 
}

//star6

 if (updown6==true){
    if (opacity6>0 && opacity6<254){
      opacity6=opacity6+1;
    }
  
    else {
      updown6=false;
    }
 }
 
 else{
   if (opacity6==254) {
       opacity6=opacity6-1;
   }
   if (opacity6==255){
       opacity6=opacity6-1;
 }
   if(opacity6>255){
       opacity6=opacity6-1;
}
  if(opacity6<254 && opacity6>10){
  opacity6=opacity6-1;
 }
   else {
     updown6=true;
   }

 
}

//star7

 if (updown7==true){
    if (opacity7>0 && opacity7<254){
      opacity7=opacity7+1;
    }
  
    else {
      updown7=false;
    }
 }
 
 else{
   if (opacity7==254) {
       opacity7=opacity7-1;
   }
   if (opacity7==255){
       opacity7=opacity7-1;
 }
   if(opacity7>255){
       opacity7=opacity7-1;
}
  if(opacity7<254 && opacity7>10){
  opacity7=opacity7-1;
 }
   else {
     updown7=true;
   }

 
}

}
