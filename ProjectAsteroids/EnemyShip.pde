

class EnemyShip extends GameObject{
 //Instance Variables
 PVector dir;
 int shotTimer, threshold;
 float vx, vy;


 
 //Constructors
 EnemyShip() {
   imageMode(CENTER);
   lives = 10; 
   pos = new PVector(int(random(0, width/2)), int(random(0, height/2)));
   vel = new PVector(0,0);
   dir = new PVector(vx, vy);
   vx = myShip.pos.x - pos.x;
   vy = myShip.pos.y - pos.y;
   shotTimer = 0;
   threshold = 30;
 }
 
 
 //Behaviour function
  void show() {
   pushMatrix();
   translate(pos.x, pos.y);
   rotate(dir.heading());
   noFill();
   stroke(255);
   image(EnemyShipFig, 0, 0);
   
   popMatrix();
  }
  
  void act() {
    super.act();
    
    shotTimer++;
    
    //movement
    if (vel.mag() > 5) vel.setMag(5);
    
   
       pos.y = pos.y-2;
      //myObject.add(new EnemyFire());
     // myObject.add(new EnemyFire());
      //myObject.add(new EnemyFire());

    
    
  
    
    //bullets
    if (spacekey && shotTimer > threshold) {
       //myObject.add(new EnemyBullet(/*pos.x, pos.y, vx, vy*/)); 
       shotTimer = 0;
      
    }
  }
  
  
}
