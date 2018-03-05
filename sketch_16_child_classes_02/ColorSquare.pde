class ColorSquare extends Square {
  color squareColor;

  ColorSquare(int x, int y, int squareWidth, color myColor) {
    super(x, y, squareWidth);
    squareColor = myColor;
  }

  void draw() {
    fill(squareColor);
    super.draw();
  }
}