class Bullet extends GameObject {
   
  int killTimer;
  PVector nudge;
  

  Bullet() {
   killTimer = 120;
   lives = 1; 
   pos = new PVector (myShip.pos.x, myShip.pos.y);
   vel = new PVector (myShip.dir.x, myShip.dir.y);
   nudge = myShip.dir.copy();
   nudge.rotate(PI);
   nudge.setMag(-30);
   pos.add(nudge);
   vel.setMag(16.5);
   vel.add(myShip.vel);
   size = 10;
}

void show() {
  stroke(#4360FF, 80);
  strokeWeight(5);
  fill(#2CFFEF, 95);
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
