class Square {
  int x, y, width;
  Square(int x, int y, int width) {
    this.x = x;
    this.y = y;
    this.width = width;
  }

  void draw() {
    rect(x, y, width, width);
  }
}