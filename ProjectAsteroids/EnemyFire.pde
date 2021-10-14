/*class EnemyFire extends GameObject {
  int t; // transparency
  PVector nudge;
  
  EnemyFire() {
   lives = 1;  
   size= 8;
   t = 200;
   
   pos = new EnemyShip().pos.copy();
   nudge = new EnemyShip().dir.copy();
   nudge.rotate(PI);
   nudge.setMag(30);
   pos.add(nudge);
   vel = new EnemyShip().dir.copy();
   vel.rotate(PI + random(-0.2, 0.2));
   vel.setMag (3);
   
  }
  
  void show() {
    noStroke();
    fill(#FF0335, t);
    square(pos.x, pos.y, size);
    fill(#7940FF, t);
    square(pos.x, pos.y, size-2);
    fill(#297DFF, t);
    square(pos.x, pos.y, size-4);
    
    
  }
  
  void act() {
    super.act();
    t = t - 10;
    
    if (t <= 0) lives = 0;
  }
}
*/
