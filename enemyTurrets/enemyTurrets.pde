int total = 1000;
Particle[] parray = new Particle[total];
 
int rad=50;    //Main circle
float minr=5;
float unitx;
float unity;
 
final float theta0=0;  //Init angle
final float thetaEnd=360;
float dtheta=13; //every 13 degrees
 
float cTheta  = theta0;  //Current theta    
float x;
float y;
float vel=10;
 
void setup() {
  size(400, 600); 
  noStroke();
  ellipseMode(RADIUS);
 
  setPositionAndOrientation();
 
  for (int i = 0; i < parray.length; i++) {
    parray[i] = new Particle(new PVector(x,y));
  }
 
}
 
void draw() {
  background(0);
  translate(width/2, height/2);
 
  fill(255);
  ellipse(0, 0, rad, rad);
 
 
  x+=vel*unitx;
  y+=vel*unity;
 
  for (int i = 0; i < parray.length; i++) {
    Particle p = parray[i];
    p.run();
  }
 
  if ((x> -width/2 && y> -height/2 && x<width/2 && y<height/2)==false) {    
    cTheta+=dtheta;  //Increment to next theta
    setPositionAndOrientation();
  }
 
  if (cTheta>thetaEnd){
   // noLoop();  //Stop looping when reaching final angle
  }
}
 
void setPositionAndOrientation() {
  unitx=cos(radians(cTheta));
  unity=sin(radians(cTheta));
  x=rad*unitx;
  y=rad*unity;
}
 
class Particle {
 
Particle(PVector s) {
  }
 
  void run() {
    fill(255,0,0);
    ellipse(x,y,minr,minr);
  } 
}
