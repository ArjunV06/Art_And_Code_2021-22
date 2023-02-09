//Name

String word;
PFont f;

void setup()
{
    size(1500,1500);
    
    f = createFont("Comic Sans MS",36,true);
    textFont(f);
    //String[] fontList = PFont.list();
    //printArray(fontList);
    textAlign(LEFT);
    background(0);
    word = "";
  
}

void draw()
{
    if(frameCount % 30 == 0)
       println(word);
       //text("test",100,100);
}
  /*---1----*/
  void rotateWord(String word, int x, int y, int rot)
  {
      pushMatrix();
      fill(int(random(255)), int(random(255)), int(random(255)));
      translate(x, y);
      rotate(radians(rot));
      text(word,0,0);
      popMatrix();
  }
  //Write your rotateWord method. It should take a String, an x and y position, and rotation amount
  //The method should take the given word, give it a random color, rotate it and throw on the window at the given location

void keyPressed()
{
  //the keyCode for enter is 10
  if(keyCode == 10){
      /*---2---*/
      rotateWord(word,mouseX,mouseY,int(random(360)));
      word = "";
      //call your rotate word method
      //clear the word (just set the word variable back to an empty string)
  }    
  else if(key == ' ')
      word = ""; //clears word
     
  else if(keyCode == 9) //tab
     save("wordpile.jpg");

  else
      word += key; //adds the last key pressed to the word string
}
  
  