player s,r;
PVector bulletSpd = new PVector();
PGraphics pg;
bullet ch = new bullet();
PVector enemyLoc = new PVector(90,90);
HUD hud;
float bulletVel = 12,ds;
void setup(){
  //s.addBullet();
  //fullScreen();
  size(1200,728);
  hud = new HUD();
  s = new player();
  r = new player();
   pg = createGraphics(1200, 728);
  
}

void draw(){
  background(90);
  //pg.beginDraw();
  //pg.background(255);
  //pg.endDraw();
  //image(pg,1200,728);
  //s.show(color(234,23,211));
  //s.move();
  //s.shoot();
  //s.displayAim();  
  //hud.show(color(0,255,0,ds));
  //if(hud.checkPlayer()){
  // ds = map(dir.x,0,485,0,255);
  //}
  
  new start().show();
  //r.show(color(67,21,1));
  //r.move();
}
  
