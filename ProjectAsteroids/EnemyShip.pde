class EnemyShip extends GameObject{
 //Instance Variables
 PVector dir;
 int shotTimer, threshold;
 float vx, vy;
 int size;

 
 //Constructors
 EnemyShip() {
   imageMode(CENTER);
   lives = 6; 
   pos = new PVector(int(random(0, width)), 0);
   vel = new PVector(0, 0);
   vx = myShip.pos.x - pos.x;
   vy = myShip.pos.y - pos.y;
   shotTimer = 0;
   threshold = 60;
   size = 150;
 }
 
 
 //Behaviour function
  void show() {
   vx = myShip.pos.x - pos.x;
   vy = myShip.pos.y - pos.y;
   dir = new PVector(vx, vy);
   pushMatrix();
   
   translate(pos.x, pos.y);
   rotate(dir.heading());
   noFill();
   noStroke();
   image(enemyShipFig, 0, 0, size, size);
   stroke(255);
   popMatrix();
   println(lives);
  }
  
  void act() {
   
    super.act();
    
    shotTimer++;
    
    //movement
    vel.add(dir);
    if (vel.mag() > 2) vel.setMag(2);
    
    
    //bullets
    if (shotTimer > threshold) {
       //myObject.add(new EnemyBullet(pos.x, pos.y, vx, vy, dir)); 
       shotTimer = 0;    
      
       }
    }
    
    void checkCollision() {
      for (int i = 0; i < myObject.size(); i ++) {
     GameObject obj = myObject.get(i);
     
     if (obj instanceof Bullet) {
       if ( dist(pos.x, pos.y, obj.pos.x, obj.pos.y) <= obj.size/2 + size/2 ) {
        obj.lives = 0;
        lives --;
          }
        }
      }
        
  }
  
}
  
  
