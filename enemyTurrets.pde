class enemyTurrets extends  GameObject{
  PVector EnemybulletSpd;
  ArrayList<bullet> bullets;
  PVector _enemyTurretLocation;
  //float x;
  //float y;
  enemyTurrets(float x, float y) {
    EnemybulletSpd = new PVector(3,3);
    bullets = new ArrayList<bullet>(); //<>//
    _enemyTurretLocation = new PVector(x, y);
    noStroke();
    //ellipseMode(RADIUS);
  }

 void show(color Color) {
    //translate(width/2, height/2);
    fill(Color);
    ellipse(_enemyTurretLocation.x, _enemyTurretLocation.y, 50, 50);
  }
  void move(){
  int x =9;
  }
 void shoot() {
    if (frameCount % 10 == 0) {

      addBullet();
    }  
    for ( int b = bullets.size(); b != 0; )
      if ( bullets.get(--b).run() ) print(""); // bullets.remove(b);

    // print(bullets.size() + "\t");
  }
private void addBullet() {
    EnemybulletSpd.set(dir.x, dir.y, 0);
    EnemybulletSpd.add(dir.sub(90,90));
    EnemybulletSpd.normalize();
    EnemybulletSpd.mult(bulletVel);
    bullets.add( new bullet(_enemyTurretLocation,EnemybulletSpd) );
  }
}
