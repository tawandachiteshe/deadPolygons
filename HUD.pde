PVector hudLocation;
float hudWidth, hudHeight;
class HUD {
  HUD () {
    hudLocation = new PVector(20, 20);
  }

  void update() {
  }
boolean checkPlayer(){
   float playerDis = dist(hudLocation.x,hudLocation.y,dir.x,dir.y); 
   if(playerDis<480){
     return true;
   }else
     return false;
   
  }
  void show(color Color) {
    fill(Color);
    noStroke();
    rect(hudLocation.x, hudLocation.y, 400, 20);
     textSize(24);
     float d = ammo - bullets.size();
     fill(255,0,0);
     
    text("ammo: "+d,450,35);
    text("XP: "+d,700,35);
  }
}
