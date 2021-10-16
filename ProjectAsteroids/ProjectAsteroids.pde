import processing.javafx.*;
/*
Jiongting Chen
Block 1-3
Oct 17, 2021
ASTEROIDS GAME!
Mr.P, check out my explosion effects :D
*/
boolean upkey, downkey, leftkey, rightkey, spacekey;
Ship myShip;
PFont PixelFont;
PImage[] shipFigure, explosionGIF, backGround, healthBar, introGIF;
ArrayList<GameObject> myObject;
PImage asteroidsFig, enemyShipFig;
PFont Pixelboy;

int mode;
int randomBG;
int BGnum = 5;
int asteroidsSpawn;

final int INTRO = 0;
final int GAME =1 ;
final int PAUSE =2 ;
final int GAMEOVER = 3;


void setup() {
  size(1600, 900, FX2D);
  //fullScreen();
  imageMode(CENTER);
  rectMode(CENTER);
  myShip = new Ship();
  frameRate(60);
  shipFigure = new PImage[5];
  explosionGIF = new PImage[11];
  backGround = new PImage[5];
  healthBar = new PImage[7];
  introGIF = new PImage[45];
  asteroidsFig = loadImage("Asteroids/AsteroidsFigure.png");
  enemyShipFig = loadImage("spaceShip/EnemyShipFig.png");
  Pixelboy = createFont("Pixeboy.ttf", 64);
  randomBG = int(random(0, BGnum));

  for (int i = 0; i<5; i++) {
    shipFigure[i] = loadImage("spaceShip/frame_0"+i+"_delay-0.01s.gif");
    backGround[i] = loadImage("backgrounds/BackG_0"+i+".jpg");
    
  }
  
  for (int i = 0; i<45; i++) {
    introGIF[i] = loadImage("Menu/Intro/frame_"+i+"_delay-0.07s.png");
    
  }
  
   for (int i = 0; i<7; i++) {
    healthBar[i] = loadImage("HealthBar/Health_"+i+".png");
    
  }
   
  for (int i = 0; i<11; i++) {
    explosionGIF[i] = loadImage("explosion/frame_0"+i+"_delay-0.1s.gif");
    
  }
  

  myObject = new ArrayList<GameObject>();
  myObject.add(myShip);
  myObject.add(new Asteroids());
  myObject.add(new Asteroids());
  myObject.add(new Asteroids());
  myObject.add(new Asteroids());
  myObject.add(new Asteroids());
  myObject.add(new EnemyShip());
 
  

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
