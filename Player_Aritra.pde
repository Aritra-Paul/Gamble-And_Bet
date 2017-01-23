

class Player{
  int x;
  int y;
  int w;
  Di d1;
  Di d2;
  
  Player( int xd, int yd, int wd, Di d1d, Di d2d){
    x = xd;
    y = yd;
    w = wd;
      d1 = d1d;
      d2 = d2d;
       
  }
  
    int rollDice(){
    int sumOfDice = d1.getValue() + d2.getValue();
    return sumOfDice;
    
  }
  
  void drawPlayer(){
   fill(255, 248, 0);
   ellipse(x, y, w, w);
   fill(0);
   ellipse(x-20, y - 20, w-80, w-75);
   ellipse(x+20, y - 20, w-80, w-75);
   ellipse(x, y+20, w-60, w-80);
   rectMode(CENTER);
   noStroke();
   fill(255,248,0);
   rect(x,y+15, w-60, w-90);
   d1.drawDi();
   d2.drawDi();
     
}

    
   

}
  
 