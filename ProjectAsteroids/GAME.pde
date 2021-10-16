  void game() {
  
 
  image(backGround[randomBG], width/2, height/2);
  backGround[randomBG].resize(width, height);
 
   myShip.show();
   myShip.act();
   myShip.checkCollision();
   
   if (myShip.lives <= 0) {
       //myShip.remove();
     }

  
   for (int i = 0; i < myObject.size(); i ++) {
     GameObject obj = myObject.get(i);
     obj.show();
     obj.act();
     
     if (obj.lives <= 0) {
       myObject.remove(i);
     }
   }
  
}
