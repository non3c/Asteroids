class Bullet extends GameObject {
   
  int killTimer;

  Bullet() {
   killTimer = 120;
   lives = 1; 
   pos = new PVector (myShip.pos.x, myShip.pos.y);
   vel = new PVector (myShip.dir.x, myShip.dir.y);
   vel.setMag(12.5);
   vel.add(myShip.vel);
}

void show() {
  stroke(#640F00);
  strokeWeight(1);
  fill(#F74802);
  ellipse(pos.x, pos.y, 10, 10);
  
}

void act() {
  super.act();
//if (pos.y < -50 || pos.y > height+50 || pos.x < -50 || pos.x > width+50) {lives = 0;}
   killTimer--;
   if (killTimer == 0) {
     lives = 0; 
   }
}

}
