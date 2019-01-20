int screen_width, screen_height;
float size = 20, playerX, playerY;

float moverPlayerY = 0, moverPlayerX = 0, moverHelperX, moverHelperY;
float playerHelperX = 5, playerHelperY = 5;


Drop drop;
player plr;
ArrayList<Drop> drops = new ArrayList<Drop>();
float  obX = 200, obY = 200, obSize = 50;

void setup(){

// Screen
screen_width = width;
screen_height = height;
size(600, 600, P3D);


// Player  
playerX = (screen_width/2)-size;
playerY = (screen_height)-size*2;


plr = new player();
}




void draw(){
  
background(255);
rect(obX, obY, obSize, obSize);
plr.draw_player();

for(int i = 0; i < drops.size(); i++){
  drop = drops.get(i);
  if(drop.y >= obY && drop.y <= obY+obSize && drop.x >= obX && drop.x <= obX+obSize){
    obY+=20;
  } 

  
  drop.show();
  drop.move(); 
}

}
