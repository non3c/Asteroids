

class EnemyShip extends GameObject{
 //Instance Variables
 PVector dir;
 int shotTimer, threshold;
 float vx, vy;
 int size;

 
 //Constructors
 EnemyShip() {
   imageMode(CENTER);
   lives = 10; 
   pos = new PVector(int(random(0, width/2)), int(random(0, height/2)));
   vel = new PVector(0, 0);
   vx = myShip.pos.x - pos.x;
   vy = myShip.pos.y - pos.y;
   dir = new PVector(vx, vy);
   shotTimer = 0;
   threshold = 30;
   size = 50;
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
   stroke(255);
   image(enemyShipFig, 0, 0);
   
   popMatrix();
  }
  
  void act() {
    super.act();
    
    shotTimer++;
    
    //movement
    if (vel.mag() > 5) vel.setMag(5);
    
       
       pos.y = pos.y+2;
      //myObject.add(new EnemyFire());
     // myObject.add(new EnemyFire());
      //myObject.add(new EnemyFire());

    
    
  
    
    //bullets
    if (shotTimer > threshold) {
       myObject.add(new EnemyBullet(pos.x, pos.y, vx, vy, dir)); 
       shotTimer = 0;
      
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
  }
  
  
