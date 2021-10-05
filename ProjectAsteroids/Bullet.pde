class Bullet extends GameObject {
   


  Bullet() {
   lives = 1; 
   pos = new PVector (myShip.pos.x, myShip.pos.y);
   vel = new PVector (myShip.dir.x, myShip.dir.y);
   vel.setMag(10);
}

void show() {
  stroke(#640F00);
  strokeWeight(1);
  fill(#F74802);
  ellipse(pos.x, pos.y, 10, 10);
  
}

void act() {
  pos.add(vel);
   
}

}
