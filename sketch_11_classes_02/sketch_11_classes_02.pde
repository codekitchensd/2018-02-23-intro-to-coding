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

// you can have the class in a separate tab...