class Square {
  // properties
  int x, y;
  color c;
  int size;
  
  // constructor
  Square(int someX, int someY, int someSize, color someColor) {
    x = someX;
    y = someY;
    size = someSize;
    c = someColor;
  }
  
  //methods
  void drawMe() {
    rectMode(CENTER);
    noStroke();
    fill(c);
    rect(x,y,size,size);
  }
  void updatePos(int updatedX, int updatedY) {
    x = updatedX;
    y = updatedY;
  }
  void updateColor(color updatedC) {
    c = updatedC;
  }
  void updateShade(int inputX, int inputY) {
    
   int distance = floor(dist(x,y,inputX,inputY));
   if (distance < 255) {
     c = color(255, 255-distance, 255-distance);
   }
  }
  boolean checkIsClicked() {
    if (mouseX > x-(size/2) && mouseX < x+(size/2) && mouseY > y-(size/2) && mouseY < y+(size/2) && mousePressed) {
      return true;
    } else { 
      return false;
    }
  }
}