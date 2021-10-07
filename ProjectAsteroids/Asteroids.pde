class Asteroids extends GameObject {
  
 Asteroids() {
  lives = 500;
  pos = new PVector (random(0,width), random(0,height)); 
  vel = new PVector (0,1);
  vel.rotate( random(0,TWO_PI));
  size = 300;
  
 }
  
  void show() {
   noFill();
   stroke(255);
   strokeWeight(8);
   image(asteroidsFig, pos.x, pos.y, size, size);
   ellipse(pos.x, pos.y, size - size/2, size - size/2);
  }
  
  void act() {
   super.act(); 
   
   for (int i = 0; i < myObject.size(); i ++) {
     GameObject obj = myObject.get(i);
     if (obj instanceof Bullet) {
       if ( dist(pos.x, pos.y, obj.pos.x, obj.pos.y) <= size/2 + obj.size) {
        obj.lives = 0;
        lives --;
       }
     
      }
    }
  }
}
