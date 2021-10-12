class Asteroids extends GameObject {
  
 Asteroids() {
  lives = 5;
  pos = new PVector (random(0, width), random(0, height)); 
  vel = new PVector (0,1);
  vel.rotate( random(0,TWO_PI));
  size = 200;
  
 }
  
  void show() {
   noFill();
   noStroke();
   image(asteroidsFig, pos.x, pos.y, size, size);
   
   //ellipse(pos.x, pos.y, size, size);
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
       /*if (lives == 0) {
       for (int f = 0; f < 11; f +da+) {
        image(explosionGIF[f], pos.x, pos.y);
       }
    }
    */
  }
}
