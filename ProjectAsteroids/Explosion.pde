class Explosion extends GameObject {
  int animationNum = 11;
  int gifNum = 0;
  boolean gifEnd;
  Explosion() {  
    lives = 1;
    //pos = Asteroids.pos.copy();
  }
  
  void show() {
    
     image(explosionGIF[gifNum], pos.x, pos.y);
     gifNum ++;
     
     if (gifNum >= animationNum) {
      gifNum = 0; 
      gifEnd = true;
     }
    }
  
  
  void act() {
  super.act();
  
    for (int i = 0; i < animationNum; i ++) {
     GameObject obj = myObject.get(i);
     
     if (obj instanceof Asteroids) {
       if (obj.lives == 0) {
        if (gifEnd) {
         lives = 0;
        }
        }
      }
 
       }
        
        
      }
    
  }
  
  
