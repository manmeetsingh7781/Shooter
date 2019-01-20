
class player{
float x, y;
boolean moving = true;


void draw_player(){

  fill(0, 255, 0);
  
  this.x = playerX+moverPlayerX;
  this.y = playerY+moverPlayerY;
  
  rect(x, y, size, size);  
  
  moverPlayerX+=moverHelperX;
  
}




public void movePlayerLeft(){


moverHelperX = -playerHelperX;
moverHelperY = playerHelperY;

}


public void movePlayerRight(){
  
   moverHelperX  = playerHelperX;
   moverHelperY = +playerHelperY;
}

}





void keyPressed(){
   
  // KeyPressed
  if(keyPressed){
    if(key == ' '){
      
      drop = new Drop(playerX+moverPlayerX, playerY+moverPlayerY);
      drops.add(drop); 
      
    }
    
     if(key == CODED) {
      if (keyCode == LEFT) {
       plr.movePlayerLeft();
       

      } 
    
    
    else if (keyCode == RIGHT) {
   plr.movePlayerRight();
    }  
  
  }
 }


}
