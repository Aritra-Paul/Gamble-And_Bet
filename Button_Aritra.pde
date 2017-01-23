class Button{
  int x;
  int y; 
  int w;
  int h;
  String words;
  
  Button(int xi, int yi, int wi, int hi, String wordsi){
    x = xi;
    y = yi;
    w = wi;
    h = hi;
    words = wordsi;
  }
  
  void drawButton(){
    fill(0);
    rect(x, y, w, h);
    fill(100);
    fill(255);
    text(words, x+2.5, y+10);
    
    
  }
  
  boolean isInside(float xTest, float yTest){
    if(xTest > x - w / 2 && xTest < x + w / 2 && yTest > y - h / 2 && yTest < y + h / 2){
      return true;
    } else{ 
      return false;
    }
  }
}

      
      
    
    