PImage shipFig;

class Ship {
 //Instance Variables
 int lives;
 PVector pos;
 PVector vel;
 PVector dir;
 
 //shipFig = loadImage("spaceShip.gif");
 
 //Constructors
 Ship() {
   lives = 3; 
   pos = new PVector(width/2, height/2);
   vel = new PVector(0,0);
   dir = new PVector(0,-0.1);
 }
 
 
 //Behaviour function
  void show() {
    dir(mouseX, mouseY);
   pushMatrix();
   translate(pos.x, pos.y);
   rotate(dir.heading());
   noFill();
   stroke(255);
   triangle(-25, -12.5, -25, 12.5, 25, 0);
  // shipFig(0,0);
   
   popMatrix();
  }
  
  void act() {
    pos.add(vel);
    
    if (upkey) vel.add(dir);
    if (downkey) vel.sub(dir);
    if (leftkey) pos.x = pos.x - 1.5;
    if (rightkey)  pos.x = pos.x + 1.5;
    //if (leftkey) dir.rotate( -radians(5) );
    //if (rightkey) dir.rotate( radians(5) );
    if (spacekey) myBullets.add(new Bullet());
    
    if (pos.y < -50)        pos.y=height+50;
    if (pos.y > height+50)  pos.y = -50;
    if (pos.x < -50)        pos.x = width+50;
    if (pos.x > width+50)   pos.x = -50;
  }
  
}
