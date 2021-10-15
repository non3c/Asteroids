class Asteroids extends GameObject {
  
 Asteroids() {
  lives = 10;
  pos = new PVector (random(0, width), random(0, height)); 
  vel = new PVector (0,1);
  vel.rotate( random(0,TWO_PI));
  size = 200;
 }
 
 Asteroids(int s, float x, float y) {
  lives = 5;
  pos = new PVector (x,y); 
  vel = new PVector (0,1);
  vel.rotate( random(0,TWO_PI));
  size = s;
 }
  
  void show() {
   noFill();
   noStroke();
   image(asteroidsFig, pos.x, pos.y, size, size);
   
  }
  
  void act() {
   super.act(); 
   
   for (int i = 0; i < myObject.size(); i ++) {
     GameObject obj = myObject.get(i);
     if (obj instanceof Bullet) {
       if ( dist(pos.x, pos.y, obj.pos.x, obj.pos.y) <= size/2 + obj.size) {
        obj.lives = 0;
        lives --;
        if (lives == 0) {
        myObject.add(new Asteroids(size/2, pos.x, pos.y));
        myObject.add(new Asteroids(size/2, pos.x, pos.y));
        myObject.add(new Explosion(pos.x, pos.y, size)); 

        }
        }
      }
         if (size < 50) {
          lives = 0;
         }
       }
       
    }
    
  }
