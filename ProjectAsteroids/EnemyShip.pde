

class EnemyShip extends GameObject{
 //Instance Variables
 PVector dir;
 int shotTimer, threshold;
 float vx, vy;


 
 //Constructors
 EnemyShip() {
   imageMode(CENTER);
   lives = 5; 
   pos = new PVector(int(random(0, width/2)), int(random(0, height/2)));
   vel = new PVector(0,0);
   dir = new PVector(vx,vy);
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
   image(shipFigure[costume], 0, 0);
   
   popMatrix();
  }
  
  void act() {
    super.act();
    
    shotTimer++;
    
    //movement
    if (vel.mag() > 5) vel.setMag(5);
    
    if (upkey) {
       vel.add(dir);
      myObject.add(new Fire());
      myObject.add(new Fire());
      myObject.add(new Fire());
    }
    
    if (downkey) vel.sub(dir);
     if (!upkey || !downkey) {
      vel.x = vel.x * 0.997; 
      vel.y = vel.y * 0.997;
    }
    
    //rotation
    if (leftkey && upkey) {
    dir.rotate( -radians(0.6) );
     if ( costume > 0)
    costume --;
     } else if (leftkey) {
    dir.rotate( -radians(3) );
     if ( costume > 0)
    costume --;
  };
  
    if (rightkey && upkey) {
    dir.rotate( radians(0.6) );
     if ( costume < 4)
    costume ++;
     } else if (rightkey) {
    dir.rotate( radians(3) );
     if ( costume < 4)
    costume ++;
  }; 
  
  if (!leftkey && !rightkey) {
   if (costume > 2 ) costume--;
   else if (costume < 2) costume++;
  };
  
    
    //bullets
    if (spacekey && shotTimer > threshold) {
       myObject.add(new EnemyBullet(/*pos.x, pos.y, vx, vy*/)); 
       shotTimer = 0;
      
    }
  }
  
  
}
