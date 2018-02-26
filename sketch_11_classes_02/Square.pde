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
}