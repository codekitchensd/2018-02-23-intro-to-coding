// In this example, you can try defining squares[] as an array of ColorSquare or RedSquare,
// but it won’t work because you can’t add a parent to an array of 
// child objects, but you can add a child object to an array of parent objects.
// ColorSquare and RedSquare are both Squares, but a Square is not necessarily
// a RedSquare, it could be a ColorSquare or some other kind of Square.

Square[] squares;
color myRandoColor = color(50, 161, 70);

void setup() {
  size(200, 200);
  squares = new Square[3];
  squares[0] = new Square(10, 10, 20);
  squares[1] = new ColorSquare(50, 50, 50, myRandoColor);
  squares[2] = new RedSquare(110, 70, 70);

}

void draw() {
  fill(255);
  for(int i = 0; i< squares.length; i++) {
    squares[i].draw();
  }

}