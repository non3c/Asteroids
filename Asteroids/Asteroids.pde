boolean upkey, downkey, leftkey, rightkey, spacekey;
Ship myShip;
ArrayList<Bullet> myBullets;

PImage backGround;

void setup() {
  myShip = new Ship();
  //imageMode(CENTER);
  size(1200, 800);
  myBullets = new ArrayList<Bullet>();
  backGround = loadImage("SpaceBackground.jpg");
  image(backGround, 0, 0);
}


void draw() {
   image(backGround, 0, 0);
   myShip.show();
   myShip.act();
   
   fill(0,20);
   for (int i = 0; i < myBullets.size(); i ++) {
     Bullet blt = myBullets.get(i);
     blt.show();
     blt.act();
   }
}

void keyPressed() {
 if (keyCode == UP)     upkey = true;
 if (keyCode == DOWN)   downkey = true;
 if (keyCode == LEFT)   leftkey = true;
 if (keyCode == RIGHT)  rightkey = true;
 if (keyCode == ' ')    spacekey = true;      
}

void keyReleased() {
 if (keyCode == UP)     upkey = false;
 if (keyCode == DOWN)   downkey = false;
 if (keyCode == LEFT)   leftkey = false;
 if (keyCode == RIGHT)  rightkey = false;
 if (keyCode == ' ')    spacekey = false;       
  
  
}
