class Asteroid extends GameObject {
  
 Asteroid() {
  pos = new PVector (random(0,width), random(0,height)); 
  vel = new PVector (0,1);
  vel.rotate( random(0,TWO_PI));
  
 }
  
  void show() {
   noFill();
   stroke(255);
   ellipse(pos.x, pos.y, 100, 100);
  }
  
  void act() {
   super.act(); 
  }
}
