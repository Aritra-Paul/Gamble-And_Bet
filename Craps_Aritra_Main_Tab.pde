
void setup(){
  size(400,600);
  background(50);
  fill(255);

}

Di d1 = new Di( 100,300,100);
Di d2 = new Di( 300,300,100);
Player p = new Player(200, 100, 100, d1, d2);
 
 int pointer = 0; //Checks if it's the first roll or not
 int winChecker = 0;
 int loseChecker = 0;
 String msg = "Press Roll to start";
 int firstSum = 0;
 int point = 0;
 Button b1 = new Button(100, 450, 100, 50, "Roll");
 Button b2 = new Button(300, 450, 100, 50, "Reset");
 int roller = 0;
 int firstRoll = 0;
void draw(){
  background(128);
  textSize(20);
  text(msg, 120, 200);
  p.drawPlayer();
  b1.drawButton();
  b2.drawButton();
}
  
void mouseReleased(){
  
  
  boolean roll = b1.isInside(mouseX, mouseY);
  boolean reset = b2.isInside(mouseX, mouseY);
  
  if(reset == true){
    
    firstSum = 0;
    winChecker = 0;
    loseChecker = 0;
    firstRoll = 0;
    msg = "Press Roll to Start";
  }
  
  if( winChecker == 1 || loseChecker == 1){  //1 means you lost or won
  msg = "Press Reset to Start again";
  roll = false;
}
    println(firstRoll);
  
  if(roll == true){
     firstRoll++;
   
    if(winChecker == 0 || loseChecker == 0){ // 0 means you can roll again
      
      d1.roll();
      d2.roll();
      println();
      
    
    if(firstRoll == 1){
  
   if(p.rollDice() == 7 || p.rollDice() == 11){
      msg = "YOU WIN" + (char) 0xA +"You rolled " + p.rollDice();
      winChecker = 1;
    } else if(p.rollDice() == 2 || p.rollDice() == 3 || p.rollDice() == 12){
      msg = "You Lose"+ (char) 0xA +"You rolled " + p.rollDice() ;
      loseChecker = 1;
   } else {
     firstSum = p.rollDice();
     loseChecker = 0;
     winChecker = 0;
     msg = "Keep Rolling" + (char) 0xA +"You rolled " + p.rollDice();
     //firstRoll++;
 }
   }
   
   if(firstRoll >1){
     
     if(p.rollDice() == 7){
       msg = "You Lose"+ (char) 0xA +"You rolled " + p.rollDice();
       loseChecker = 1;
     } else if(p.rollDice() == firstSum){
       msg = "You Win"+ (char) 0xA +"You rolled " + p.rollDice();
       winChecker = 1;
     } else {
       msg = "Keep rolling"+ (char) 0xA +"You rolled " + p.rollDice();
     }
     
     //firstRoll++;
   }
      
       
} 
}
}