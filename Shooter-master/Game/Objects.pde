class Object{
float x, y, obj_width, obj_height;
float gravity, gravitySpeed, speedY;
int spawner ;

public Object(float xPos, float yPos){
  this.x = xPos;
  this.y = yPos;
  obj_width = random(10, 60); 
  obj_height = random(10, 60);
  spawner = (int) random(0, 2);
  gravity = 0.1;
  gravitySpeed = 0;
  speedY = 0.6;
}

void drawObject(){

  noStroke();
  fill(123, 213, 123);
  
switch (spawner){

  // Rect
  case 0:
   rect(this.x, this.y, obj_width, obj_height);
    break;
  
  // Ellipse
  case 1:

    ellipse(this.x, this.y, obj_width, obj_height);
    break;
  
}

}
void throwObject(){
  
  this.gravitySpeed += this.gravity;
  this.y+= this.gravitySpeed  + this.speedY;
  
  float rockbottom = screen_height - this.obj_height;
  if(this.y > rockbottom){
      this.y = rockbottom;
      this.gravitySpeed = -(this.gravity);
   
  }
  
  
  

}



}
