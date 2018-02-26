// 05 if / else

color red;
color blue;
color green;
color yellow;

void setup() {
  size(400, 400);
  
  red = color(255,50,50);
  blue = color(50,50,255);
  green = color(50,255,50);
  yellow = color(255,255,0);
  
  rectMode(CENTER);
  background(200);
}

void draw() {
  if (mouseX < width/2) {
    background(green);
  } else {
    background(yellow);
  }
  
  fill(red);
  noStroke();
  rect(mouseX, mouseY, 55, 55);
}