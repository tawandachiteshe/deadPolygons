PVector gameOverLocation;
PVector restartButton, restartButtonText;
PImage baground;
class gameOver {
  gameOver() {
    gameOverLocation = new PVector(width/2, height/2);
    restartButton = new PVector((width/2), (height/2)+90);
    restartButtonText = new PVector((width/2), (height/2)+98);
  }
  void preloadAssets() {
   
  }

  void show() {
    baground = loadImage("assets/gameover.png");
    baground.resize(width, height);
    image(baground, 0, 0);
    font = createFont("assets/myfont.TTF",70);
    textFont(font);
    filter(BLUR, 6);
    fill(255,167);
    smooth();
    strokeWeight(4);
    stroke(255,67);
    textAlign(CENTER);
    rectMode(CENTER);
    text("GAME OVER", gameOverLocation.x, gameOverLocation.y);
    noFill();

    rect(restartButton.x, restartButton.y, 200, 30);
    textSize(20);
    text("RESTART", restartButtonText.x, restartButtonText.y);
  }
}
