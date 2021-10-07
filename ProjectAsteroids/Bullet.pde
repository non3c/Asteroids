class Bullet extends GameObject {
   
  int killTimer;

  Bullet() {
   killTimer = 120;
   lives = 1; 
   pos = new PVector (myShip.pos.x, myShip.pos.y);
   vel = new PVector (myShip.dir.x, myShip.dir.y);
   vel.setMag(12.5);
   vel.add(myShip.vel);
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
