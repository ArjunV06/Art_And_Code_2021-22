AnimationType damageAni = new AnimationType("damage", 1, 944, 992);
AnimationType idleAni = new AnimationType("idle", 8, 944, 992);
AnimationType deathAni = new AnimationType("death", 8, 944, 922);
AnimationType attackAni = new AnimationType("attack", 20, 944, 922);


AnimationType quickStore=idleAni;
int timeElapsed=0;
int originalHealth=10;
int health=originalHealth;
int weaponDamage=1;
int money=0;
boolean easyMode=false;
boolean hitBoxShow=false;
boolean dead=false;
boolean debugMode;
boolean attackDone=false;
boolean runAttack=false;
void setup() {
  PFont regular=loadFont("BookAntiqua-Bold-48.vlw");
  textFont(regular);
  //(3) IS THERE BECAUSE I WANT IT TO SHOW ON MY RIGHT SIDE
  fullScreen(3);
  //size(1290,720);
  background(0);
  imageMode(CENTER);
  textSize(84);
  rectMode(CENTER);
}
int distanceFormula(int x1, int x2, int y1, int y2) {
  int xSquare=(int)pow(x2-x1, 2);
  int ySquare=(int)pow(y2-y1, 2);
  int returnValue=(int)sqrt(xSquare+ySquare);
  return returnValue;
}
//void run(AnimationType nameAnimationRun) {
//  nameAnimationRun.Display();
//}
void mouseClicked() {
  //if(runAttack==true){attackAni.Display();
  //runAttack=false;
  //attackDone=true;}
  if (dead==false) {
    if (quickStore!=attackAni) {
      if (easyMode==true) {
        if (distanceFormula(mouseX, width/2, mouseY, height/2)<150) {
          money++;
          health-=weaponDamage;
          quickStore=damageAni;
        }
      } else if (distanceFormula(mouseX, width/2, height/2, height/2)<50 && distanceFormula(width/2, width/2, mouseY, height/2)<145 ) {
        money+=2;
        health-=weaponDamage;
        quickStore=damageAni;
      }
    }
  }
}

void draw() {
  if (dead==false) {
    boolean doneStatus=false;

    println(frameRate);


    if (frameCount%60==0) {
      timeElapsed++;
    }

    //has to be first due to its size
    //run(quickStore);

    if ((int)random(300)==4) {
      quickStore=attackAni;
      health+=3;
    }
    doneStatus=quickStore.Display();
    if (doneStatus==true && quickStore!=idleAni) {
      quickStore=idleAni;
    }

    if (easyMode==false && hitBoxShow==true) {
      noFill();
      stroke(#FF0505);
      rect(width/2-20, height/2+50, 100, 285);
    }
    noFill();
    stroke(255);
    rect(width/2-(width/70), height/8, width/4+2, height/80+2);
    fill(#FF0D0D);
    noStroke();
    rect(width/2-(width/70), (height/8), ((width/4)*health)/originalHealth, (height/80));
    fill(255);
    text("MONEY: "+money, (width/4)-(width/6), height/8);
    text("TIME: "+timeElapsed, width-(width/4), (height/8));
    noFill();
    stroke(#FF0505);
    if (easyMode==true && hitBoxShow==true) {
      ellipse(width/2, height/2, 300, 300);
    }
    //if(health<=originalHealth/2)
    //{runAttack=true;}

    if (health==0&&attackDone==false) {
      quickStore=deathAni;
      dead=true;
    }
  }

  if (dead==true) {
    quickStore.Display();

    text("GOOD JOB", width/2, height/2);
  }
}





void keyPressed() {
 //debug menus

  if (key=='h') {
    hitBoxShow=!hitBoxShow;
  }
  if (key=='e') {
    easyMode=!easyMode;
  }
  if (key=='a') {
    quickStore=attackAni;
  }
  if (key=='d') {
    quickStore=damageAni;
  }
  //damageAni.Display();

  if (key=='i') {
    quickStore=idleAni;

    //idleAni.Display();
  }
  if (key=='r' && dead==true) {
    originalHealth++;
    health=originalHealth;
    timeElapsed=0;
    dead=false;
    //quickStore=deathAni;
    //deathAni.Display();
  }
}
