

class Drop{
  float x, y;
  
  
  Drop(float xPos, float yPos){
  this.x = xPos;
  this.y = yPos;
  }
  
  
  void show(){
  
      noStroke();
      ellipse(this.x, this.y, 10, 10);
  
  }
  
  void move(){
  this.y = this.y - 10;
  
  }
  
}
