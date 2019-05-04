PVector location;
PVector velocity;
PVector acce;
PVector dir;
float angle;
float dx, dy;
float bulletGap;
float gunX =45,ammo = 100;
PVector mouse;
ArrayList<bullet> bullets;
class player {
  player() {
   bullets = new ArrayList<bullet>();
    bulletGap = 10;
    location = new PVector(width/2, height/2);
    acce = new PVector(0.01, 0.1);
    velocity = new PVector(10, 10);
    dir = new PVector();
    addBullet();
  }

  void show(color Color) { 
    mouse = new PVector(mouseX, mouseY);  
    fill(Color);
    dir.x = constrain(velocity.x, 90, width);
    dir.y = constrain(velocity.y, 90, height);
    dx= mouse.x - dir.x-90;
    dy= mouse.y - dir.y-90;
    stroke(0, 0, 90);
    strokeWeight(13);
    ellipse(dir.x-45, dir.y-45, 90, 90);
    angle = atan2(dy, dx);
    pushMatrix();
    translate(dir.x-45, dir.y-45);
    rotate(angle);
    line(0, 0, gunX, 0);
    mousePressed();

    popMatrix();
  }
  void move() {
    keyPressed();
  }
  void addBullet() {
    bulletSpd.set(mouseX, mouseY, 0);

    bulletSpd.sub(dir.sub(gunX, gunX));
    bulletSpd.normalize();
    bulletSpd.mult(bulletVel);
    bullets.add( new bullet(dir, bulletSpd) );
  }
  void displayAim() {
    fill(24);
    ellipse(mouseX, mouseY, 3, 3);
  }
  
  void shoot() {
    if (mousePressed && frameCount % bulletGap == 0){
      float d = ammo - bullets.size();
      if(d!=0)
        addBullet();
    }  
    for ( int b = bullets.size(); b != 0; )
      if ( bullets.get(--b).run() ) print(""); // bullets.remove(b);
    
   // print(bullets.size() + "\t");
  }
  void mousePressed() {
  }
  void keyPressed() {
    if (keyCode == UP) {
      velocity.y += -10;
    } else if (keyCode ==DOWN) {
      velocity.y += 10;
    } else if (keyCode ==LEFT) {
      velocity.x += -10;
    } else if (keyCode ==RIGHT) {
      velocity.x += 10;
    }
  }
}
