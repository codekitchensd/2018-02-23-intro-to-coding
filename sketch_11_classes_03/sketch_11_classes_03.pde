// 11 classes
// (with updated Square class)

Square boxes[] = new Square[16];

void setup() {
  size(400,400);
  // create 16 box objects, 4 x 4
  for (int i = 0; i < boxes.length; i++) {
    boxes[i] = new Square( (width/8)+(i%4)*(width/4), (width/8)+floor(i/4.0)*(height/4), 20, color(255,0,0));
  }
}

void draw() {
  background(230);
  for (int j = 0; j < boxes.length; j++) {
    boxes[j].updateShade(mouseX,mouseY);
    boxes[j].drawMe();
  }
}