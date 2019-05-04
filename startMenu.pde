PFont font;
 final float STARTY = 300;
  float STARTX = 50;
  final float SETTINGSY = 400;
  final float CREDITSY = 500;
  final float EXITY = 600;
  String settings = "SETTINGS";
class start {
  void show()

  {
    font = createFont("assets/myfont.TTF",70);
    textFont(font);
    strokeWeight(4);
    baground = loadImage("assets/startMenu.png");
    baground.resize(width, height);
    image(baground, 0, 0);
    filter(BLUR,10);
    
    textAlign(CENTER);
    textSize(45);
    text("DEAD POLYGONS",width/2,200);
    rectMode(CENTER);
    stroke(255);
    noFill();
    textSize(34);
    textAlign(CENTER);
    
    text("START",width/2,315);
    rect(width/2, STARTY, 300, STARTX); 
    
    text(settings,width/2,415);
    rect(width/2, SETTINGSY, 300, 50);
    
    text("CREDITS",width/2,515);
    rect(width/2, CREDITSY, 300, 50);
    
    text("EXIT",width/2,615);
    rect(width/2, EXITY, 300, 50);
    
    textSize(12);
     text("SectorNode Games 2019 ©",width/2,700);
     
     text("version 1.0",50,715);
     mousePressed();
     
  }
 boolean startHandler(){
  if(mouseX>= (width/2) - 300 && mouseY >= STARTY){
   return true; 
  }else{
   return false; 
  }
 }
  boolean settingsHandler(){
  if(mouseX>= (width/2) - 300 && mouseY >= SETTINGSY){
   return true; 
  }else{
   return false; 
  }
 }
  boolean creditsHandler(){
  if(mouseX>= (width/2) - 300 && mouseY >= CREDITSY){
   return true; 
  }else{
   return false; 
  }
 }
  boolean exitHandler(){
  if(mouseX>= (width/2) - 300 && mouseY >= EXITY){
   return true; 
  }else{
   return false; 
  }
 }
 
 void mousePressed(){
   if(mouseButton==LEFT){
    if(startHandler()){
   println("start");
    }else if(settingsHandler()){
      STARTX = 50;
      println("settings");
    }
    else if(creditsHandler()){
      STARTX = 50;
      println("credits");
    }
    else if(exitHandler()){
      STARTX = 50;
      println("exit");
      keyCode = ESC;
      s = new player();
      s.show(color(23,23,2));
      //s.move();
    }
    
  }
  //boolean checkMouse() {
  //  if (mouseX >= x && mouseX <= x+width && 
  //    mouseY >= y && mouseY <= y+height) {
  //    return true;
  //  } else {
  //    return false;
  //  }
  //}
}
}
