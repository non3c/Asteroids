class EnemyBullet extends GameObject {
   
  int killTimer;
  PVector nudge;
  
  EnemyBullet(float x, float y, float vx, float vy, PVector dir) {
   killTimer = 60;
   lives = 1; 
   pos = new PVector(x, y);
   vel = new PVector(vx, vy);
   nudge = dir.copy();
   nudge.rotate(PI);
   nudge.setMag(-30);
   pos.add(nudge);
   vel.setMag(10.5);
   //vel.add(myObject.vel);
   size = 15;
}

void show() {
  stroke(#640F00, 80);
  strokeWeight(3);
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
