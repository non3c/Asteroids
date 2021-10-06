PImage shipFigure;


class Ship extends GameObject{
 //Instance Variables
 PVector dir;
 

 
 //Constructors
 Ship() {
   imageMode(CENTER);
   lives = 3; 
   pos = new PVector(width/2, height/2);
   vel = new PVector(0,0);
   dir = new PVector(0,-0.1);
 }
 
 
 //Behaviour function
  void show() {
   shipFigure = loadImage("spaceShip.png");
   pushMatrix();
   translate(pos.x, pos.y);
   rotate(dir.heading());
   noFill();
   stroke(255);
   triangle(-25, -12.5, -25, 12.5, 25, 0);
   image(shipFigure, 0, 0 );
   fill(0, 20);
   rect(0, 0, 5, 5);
   rect(0, 0, 5, 5);
   
   popMatrix();
  }
  
  void act() {
    super.act();
    
    
    if (vel.mag() > 5) vel.setMag(5);
    if (upkey) vel.add(dir);
    if (downkey) vel.sub(dir);
    if (!upkey || !downkey) {vel.x = vel.x * 0.995 ; vel.y = vel.y * 0.995;}
    if (leftkey) dir.rotate( -radians(5) );
    if (rightkey) dir.rotate( radians(5) ); 
    if (spacekey) myObject.add(new Bullet()); 
  }
  
  
}
