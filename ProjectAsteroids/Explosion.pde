
int gifNum;
int lives;
int size;

class Explosion extends GameObject {
  
  Explosion(float x, float y, int s) {  
    lives = 1;
    gifNum = 0;
    size = s;
    pos = new PVector(x, y);
    
  }
  
  void show() {
    
     explosionGIF[gifNum].resize(size, size);
     image(explosionGIF[gifNum], pos.x, pos.y);
     gifNum++;
     if (gifNum >= 11) {
       lives = 0;
       gifNum = 0;
     }
    }
  void act() {
    
  }
  
}
    
  
  
  
