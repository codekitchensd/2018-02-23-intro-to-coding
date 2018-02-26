// 05 if / else

color red;
color blue;
color green;
color yellow;
color black;
color purple;

void setup() {
  size(400, 400);
  
  red = color(255,50,50);
  blue = color(50,50,255);
  green = color(50,255,50);
  yellow = color(255,255,50);
  black = color(0,0,0);
  purple = color(255,50,255);
  
  rectMode(CENTER);
  background(200);
}

void draw() {
  color bgColor = yellow;
  color fillColor = red;
  if (mouseX > width/3 && mouseX < 2*width/3 && 
      mouseY > height/4 && mouseY < 3*height/4 ) {
    //println("inside");
    bgColor = green;
    fillColor = blue;
  } else {
    //println("outside", mouseY, height*0.75);
    bgColor = yellow;
    fillColor = red;
  }
  if (mousePressed) {
    bgColor = black;
  }
  background(bgColor);
  fill(fillColor);
  stroke(blue);
  rect(width/2,height/2, width/3, 2*height/4);
  
  fill(purple);
  noStroke();
  rect(mouseX, mouseY, 20, 20);
}