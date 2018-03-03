color burntOrange = color(201, 33, 1);
color blue = color(0, 0, 255);

void setup() {
  size(600, 600);
  background(burntOrange);
}

void draw() {
  noCursor();
  background(burntOrange);
  fill(blue);
  rect(mouseX, mouseY, 55, 55);
}