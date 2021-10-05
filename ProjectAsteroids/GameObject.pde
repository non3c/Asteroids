class GameObject {
  int lives;
   PVector pos;
   PVector vel; 
  
  GameObject() {
    
  }
  
  void show() {
    
    
  }
  
  void act() {
    pos.add(vel);
    
    if (pos.y < -50)        pos.y=height+50;
    if (pos.y > height+50)  pos.y = -50;
    if (pos.x < -50)        pos.x = width+50;
    if (pos.x > width+50)   pos.x = -50; 
  }
}
