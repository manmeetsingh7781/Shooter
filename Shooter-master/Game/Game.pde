int screen_width, screen_height;
int size = 20;


Drop drop;
player plr;
Object obj;
ArrayList<Drop> drops = new ArrayList<Drop>();
float  obX = 200, obY = 200, obSize = 50;

void setup(){

// Screen
screen_width = width;
screen_height = height;
size(600, 600, P3D);


// Player  
plr = new player((screen_width/2)-size*2, (screen_height)-size*2);
obj = new Object(random(screen_width), random(-100, -10));

}




void draw(){


background(255);

plr.drawPlayer();
obj.drawObject();
obj.throwObject();

for(int i = 0; i < drops.size(); i++){
  drop = drops.get(i);
  
  // Drops collision
  if(drop.y >= obY && drop.y <= obY+obSize && drop.x >= obX && drop.x <= obX+obSize){
    obY+=20;
  } 

  
  drop.show();
  drop.move(); 
}


plr.x = mouseX;

}


void mouseClicked(){
   
      drop = new Drop(plr.x, plr.y);
      drops.add(drop); 
      
  
}
