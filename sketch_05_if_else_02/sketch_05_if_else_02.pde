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
  if (mouseX > width/3 && mouseX < 2*width/3 && 
      mouseY > height/4 && mouseY < 3*height/4 ) {
    //println("inside");
    background(green);
    fill(blue);
  } else {
    //println("outside", mouseY, height*0.75);
    background(yellow);
    fill(red);
  }
  stroke(blue);
  rect(width/2,height/2, width/3, 2*height/4);
  
  fill(50);
  noStroke();
  rect(mouseX, mouseY, 20, 20);
}