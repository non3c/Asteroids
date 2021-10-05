PImage shipFig;


class Ship extends GameObject{
 //Instance Variables
 PVector dir;
 

 
 //Constructors
 Ship() {
   lives = 3; 
   pos = new PVector(width/2, height/2);
   vel = new PVector(0,0);
   dir = new PVector(0,-0.1);
 }
 
 
 //Behaviour function
  void show() {
   //dir(mouseX, mouseY);
   shipFig = loadImage("spaceShip.png");
   pushMatrix();
   translate(pos.x, pos.y);
   rotate(dir.heading());
   noFill();
   stroke(255);
   triangle(-25, -12.5, -25, 12.5, 25, 0);
  // shipFig;
   
   popMatrix();
  }
  
  void act() {
    super.act();
    if (upkey) vel.add(dir);
    if (downkey) vel.sub(dir);
    if (leftkey) pos.x = pos.x - 1.5;
    if (rightkey)  pos.x = pos.x + 1.5;
    if (turnLeft) dir.rotate( -radians(5) );
    if (turnRight) dir.rotate( radians(5) );
    if (spacekey) myObject.add(new Bullet()); 
  }
  
}
