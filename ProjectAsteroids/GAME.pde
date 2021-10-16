  void game() {
  int HealthStatus = 6;
 
  image(backGround[randomBG], width/2, height/2);
  backGround[randomBG].resize(width, height);
 
   myShip.show();
   myShip.act();
   myShip.checkCollision();
   
   

  
   for (int i = 0; i < myObject.size(); i ++) {
     GameObject obj = myObject.get(i);
     obj.show();
     obj.act();
     
     if (obj.lives <= 0) {
       myObject.remove(i);
     }
   }
  
  
   HealthStatus = myShip.lives;
   healthBar[HealthStatus].resize(443/2, 199/2);
   image(healthBar[HealthStatus],width-width/1.09, height-height/1.05);
   if (HealthStatus <=0) {
     gameover();
  }
}
