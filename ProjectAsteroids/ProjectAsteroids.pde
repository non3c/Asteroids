boolean upkey, downkey, leftkey, rightkey, spacekey, turnLeft, turnRight;
Ship myShip;

PImage[] shipFigure;
ArrayList<GameObject> myObject;
PImage backGround, asteroidsFig;

int mode;

final int INTRO = 0;
final int GAME =1 ;
final int PAUSE =2 ;
final int GAMEOVER = 3;


void setup() {
  rectMode(CENTER);
  myShip = new Ship();
  //if (mode == GAME) {
  shipFigure = new PImage[10];
  backGround = loadImage("SpaceBackground.png");
  asteroidsFig = loadImage("AsteroidsFigure.png");
 

  
  
 // }
  
  for (int i = 0; i<10; i++) {
    shipFigure[i] = loadImage("spaceShip/frame_0"+i+"_delay-0.01s.gif");
    
  }
  
  size(1200, 800);
  myObject = new ArrayList<GameObject>();
  myObject.add(myShip);
  myObject.add(new Asteroids());

  
  
 
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
     
     if (obj.lives <= 0) {
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
