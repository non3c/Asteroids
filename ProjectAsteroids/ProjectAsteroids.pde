boolean upkey, downkey, leftkey, rightkey, spacekey, turnLeft, turnRight;
Ship myShip;

PImage[] shipFigure, explosionGIF, backGround;
ArrayList<GameObject> myObject;
PImage asteroidsFig;

int mode;
int randomBG;

final int INTRO = 0;
final int GAME =1 ;
final int PAUSE =2 ;
final int GAMEOVER = 3;


void setup() {
  fullScreen();
  //size(1200, 800);
  rectMode(CENTER);
  myShip = new Ship();
  //if (mode == GAME) {
  shipFigure = new PImage[5];
  explosionGIF = new PImage[11];
  asteroidsFig = loadImage("Asteroids/AsteroidsFigure.png");

  
  
 // }
  
  for (int i = 0; i<5; i++) {
    shipFigure[i] = loadImage("spaceShip/frame_0"+i+"_delay-0.01s.gif");
    
  }
  
   for (int i = 0; i<1; i++) {
    backGround[i] = loadImage("Backgrounds/backGround-"+i+".jpg");
    
  }
  
   for (int i = 0; i<11; i++) {
    explosionGIF[i] = loadImage("explosion/frame_0"+i+"_delay-0.1s.gif");
    
  }
  

  myObject = new ArrayList<GameObject>();
  myObject.add(myShip);
  myObject.add(new Asteroids());
  myObject.add(new Asteroids());
  myObject.add(new Asteroids());
    

  
  randomBG = int(random(0,2));
 
  image(backGround[randomBG], width/2, height/2);
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
   image(backGround[randomBG], width/2, height/2);
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
