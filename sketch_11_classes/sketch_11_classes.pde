// 11 classes

// an object called "box1" of type "Square"
Square box1;

void setup() {
  size(400,400);
  box1 = new Square(width/2, height/2, 20, color(255,0,0));
}

void draw() {
  background(230);
  box1.updatePos(mouseX,mouseY);
  box1.drawMe();
}

// the class is the blueprint of the objects
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