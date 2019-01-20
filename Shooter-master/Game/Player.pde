
class player{
  
  float x, y, player_size = size, moveSpeed, xaxis_helper;

  player(float xPos, float yPos){
  this.x = xPos; 
  this.y = yPos;
  }
void drawPlayer(){
  
  noStroke();
  fill(123, 213, 123);
  rect(this.x, this.y, this.player_size , this.player_size);

}


}
