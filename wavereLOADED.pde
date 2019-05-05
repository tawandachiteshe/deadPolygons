PVector enemyLoc, enemyLoc1;
GameObject turrets, turrets1, turrets2, turrets3;
GameObject s,r;
HUD hud;
start starts;
 ArrayList<GameObject> obj;
float bulletVel = 12, ds;
void setup() {
  obj = new ArrayList<GameObject>();
  //s.addBullet();
  //fullScreen();
  //noCursor();
  starts = new start();
  enemyLoc = new PVector(90, 90);
  enemyLoc1 = new PVector(90, 638);
  size(1200, 728);
  hud = new HUD();
  obj.add(new player());
  obj.add(new enemyTurrets(90,90));
  obj.add(new enemyTurrets(682,90));
  obj.add(new enemyTurrets(90,700));
  obj.add(new enemyTurrets(682,90));
}

void draw() {
  
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

println(dir);
  //image(cursor, mouseX, mouseY);
 
    println(id.player);
  
   hud.show(color(255,0,0));
   hud.checkPlayer();
   for(GameObject sd : obj){
    sd.show(color(34,79,214));
    sd.shoot();
    sd.move();
  
   }
  //turrets.show(color(56, 76, 89));
  //turrets.shoot();
}
