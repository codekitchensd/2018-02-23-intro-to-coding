class Square {
  // properties
  int x, y;
  color c;
  int size;
  int drawMode;

  // constructor
  Square(int someX, int someY, int someSize, color someColor) {
    x = someX;
    y = someY;
    size = someSize;
    c = someColor;
    drawMode = CENTER;
  }

  Square(int someX, int someY, int someSize, color someColor, int specificDrawMode) {
    x = someX;
    y = someY;
    size = someSize;
    c = someColor;
    drawMode = specificDrawMode;
  }

  //methods
  void drawMe() {
    rectMode(drawMode);
    noStroke();
    fill(c);
    rect(x,y,size,size);
  }
  
  void setDrawMode(int newMode) {
    drawMode = newMode;
  }

  boolean mouseInside() {
    //this returns true or false
    //the logical expression is very long, 
    //so I put it on multiple lines to make it easier to read

    return (
      (mouseX < (x + size)) 
      && (mouseX > x)
      && (mouseY > y)
      && (mouseY < (y + size))
    );
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