boolean upkey, downkey, leftkey, rightkey, spacekey;
Ship myShip;
PFont PixelFont;
PImage[] shipFigure, explosionGIF, backGround;
ArrayList<GameObject> myObject;
PImage asteroidsFig, enemyShipFig;

int mode;
int randomBG;
int BGnum = 5;
int asteroidsSpawn;

final int INTRO = 0;
final int GAME =1 ;
final int PAUSE =2 ;
final int GAMEOVER = 3;


void setup() {
  fullScreen();
  imageMode(CENTER);
  rectMode(CENTER);
  myShip = new Ship();
  //if (mode == GAME) {
  shipFigure = new PImage[5];
  explosionGIF = new PImage[11];
  backGround = new PImage[5];
  asteroidsFig = loadImage("Asteroids/AsteroidsFigure.png");
  enemyShipFig = loadImage("EnemyShipFig.jpg");

  
  
 // }
 //if (mode == GAME) { 
  for (int i = 0; i<5; i++) {
    shipFigure[i] = loadImage("spaceShip/frame_0"+i+"_delay-0.01s.gif");
    
  }
  
  for (int i = 0; i<BGnum; i++) {
    backGround[i] = loadImage("backgrounds/BackG_0"+i+".jpg");
    
  }
  
  for (int i = 0; i<11; i++) {
    explosionGIF[i] = loadImage("explosion/frame_0"+i+"_delay-0.1s.gif");
    
  }

  randomBG = int(random(0, BGnum));
  
  myObject = new ArrayList<GameObject>();
  myObject.add(myShip);
  myObject.add(new Asteroids());
  myObject.add(new Asteroids());
  myObject.add(new Asteroids());
  myObject.add(new Asteroids());
  myObject.add(new Asteroids());
  myObject.add(new EnemyShip());
// }
  

}


void draw() {

    if (mode == INTRO) {
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

   
}
