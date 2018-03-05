Square mySquare;
ColorSquare myColorSquare;
RedSquare myRedSquare;
color myRandoColor = color(50, 161, 70);

void setup() {
  size(200, 200);
  mySquare = new Square(10, 10, 20);
  myColorSquare = new ColorSquare(50, 50, 50, myRandoColor);
  myRedSquare = new RedSquare(110, 70, 70);

}

void draw() {
  fill(255);
  mySquare.draw();
  myColorSquare.draw();
  myRedSquare.draw();
}