PImage shipNormal;
int costume = 2;
class Ship extends GameObject{
 //Instance Variables
 PVector dir;
 int shotTimer, ShotThreshold;
 int immuneTimer, ImmuneThreshold;
 int size;
 
 //Constructors
 Ship() {
   imageMode(CENTER);
   lives = 3; 
   pos = new PVector(width/2, height/2);
   vel = new PVector(0,0);
   dir = new PVector(0,-0.1);
   size = 50;
   immuneTimer = 0;
   ImmuneThreshold = 60;
   shotTimer = 0;
   ShotThreshold = 30;
 }
 
 
 //Behaviour function
  void show() {
   pushMatrix();
   translate(pos.x, pos.y);
   rotate(dir.heading());
   noFill();
   stroke(255);
   image(shipFigure[costume], 0, 0);
   shipFigure[costume].resize(size+50, size+50);
   
   popMatrix();
  }
  
  void act() {
    super.act();
    
    shotTimer++;
    immuneTimer ++;
    
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
    if (spacekey && shotTimer > ShotThreshold) {
       myObject.add(new Bullet()); 
       shotTimer = 0;
      
    }
    
    if (immuneTimer > ImmuneThreshold) { 
    noFill();
    stroke(#40BEFF, immuneTimer);
    strokeWeight(5);
    ellipse(pos.x, pos.y, size+20, size+20);
    immuneTimer = 0;
    }
    
  }
  
  void checkCollision() {
   
    for (int i = 0; i < myObject.size(); i ++) {
     GameObject obj = myObject.get(i);
     
     if (obj instanceof Asteroids) {
       if ( dist(pos.x, pos.y, obj.pos.x, obj.pos.y) <= obj.size/2 + size/2) {
        immuneTimer = 0;
        vel = vel.sub(dir);
        }
      }
 
     
    }
    
   
  
   }
  
}
