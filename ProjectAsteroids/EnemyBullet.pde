class EnemyBullet extends GameObject {
   
  int killTimer;
  PVector nudge;
  
  EnemyBullet() {
   killTimer = 60;
   lives = 1; 
   pos = new EnemyShip().pos.copy();
   vel = new EnemyShip().dir.copy();
   //nudge = myObject.dir.copy();
   nudge.rotate(PI);
   nudge.setMag(-30);
   pos.add(nudge);
   vel.setMag(16.5);
   //vel.add(myObject.vel);
   size = 10;
}

void show() {
  stroke(#640F00, 80);
  strokeWeight(5);
  fill(#F74802, 95);
  ellipse(pos.x, pos.y, size, size);
  
}

void act() {
  super.act();
  
   killTimer--;
   if (killTimer == 0) {
     lives = 0; 
   }
}

}
