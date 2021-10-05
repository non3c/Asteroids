class Bullet {
   int lives;
   PVector pos;
   PVector vel; 
  


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
   
   
    if (pos.y < -50)        pos.y=height+50;
    if (pos.y > height+50)  pos.y = -50;
    if (pos.x < -50)        pos.x = width+50;
    if (pos.x > width+50)   pos.x = -50;
  
}

}
