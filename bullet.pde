class bullet extends PVector {
    PVector vel;
    PVector _loc;
   
    bullet(PVector loc, PVector vel) {
        super(loc.x, loc.y);
        this.vel = vel.get();
    }
    bullet(){}

    void display() {
        fill(25,255,8);
        ellipse(x, y, 3, 3);
        
    }

    boolean update() {
        add(vel);
        return x > width || x < 0 || y > height || y < 0;
    }

    boolean run() {
        display();
        //checkHit();
        return update();
    }
    
   //boolean checkHit(){
    
   //    //float  dis = dist(new PVector(x,y),enemyLoc);
   //    // if(dis<=45)
   //    //   return true;
   //    // else 
   //    //   return false;
   // }
}
