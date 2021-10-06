boolean upkey, downkey, leftkey, rightkey, spacekey, turnLeft, turnRight;
Ship myShip;

PImage[] leftTurn, rightTurn;
ArrayList<GameObject> myObject;
PImage backGround;

int mode;

final int INTRO = 0;
final int GAME =1 ;
final int PAUSE =2 ;
final int GAMEOVER = 3;


void setup() {

  myShip = new Ship();
  //if (mode == GAME) {
  leftTurn = new PImage[4];
  rightTurn = new PImage[9];
 // }
  
  for (int i = 0; i<4; i++) {
    leftTurn[i] = loadImage("spaceShip/frame_"+i+"_delay-0.01s.gif");
    
  }
  
  
   for (int i = 5; i<9; i++) {
    rightTurn[i] = loadImage("spaceShip/frame_"+i+"_delay-0.01s.gif");
    
  }
  
  size(1200, 800);
  myObject = new ArrayList<GameObject>();
  myObject.add(myShip);
  backGround = loadImage("SpaceBackground.png");
 
  image(backGround, width/2, height/2);
}


void draw() {
  
 /*   if (mode == INTRO) {
   intro();
  } else if (mode == GAME) {
   game();
  } else if (mode == PAUSE) {
   pause();
  } else if (mode == GAMEOVER) {
   gameover();
  } else {
     println("Error: Mode = " + mode);
  }
*/
   image(backGround, width/2, height/2);
   myShip.show();
   myShip.act();
   
   fill(0,20);
   for (int i = 0; i < myObject.size(); i ++) {
     GameObject obj = myObject.get(i);
     obj.show();
     obj.act();
     
     if (obj.lives == 0) {
       myObject.remove(i);
     }
   }
}

void keyPressed() {
 if (keyCode == 'W')       upkey = true;
 if (keyCode == 'S')     downkey = true;
 if (keyCode == 'A')     leftkey = true;
 if (keyCode == 'D')    rightkey = true;
 if (keyCode == ' ')    spacekey = true;  

}

void keyReleased() {
 if (keyCode == 'W')       upkey = false;
 if (keyCode == 'S')     downkey = false;
 if (keyCode == 'A')     leftkey = false;
 if (keyCode == 'D')    rightkey = false;
 if (keyCode == ' ')    spacekey = false;    

  
  
}
