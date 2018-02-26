PImage pugPic;

void setup() {
  size(400,400);
  background(50);
  pugPic = loadImage("pug.jpg");
}

void draw() {
  image(pugPic, mouseX-(pugPic.width/4), mouseY-(pugPic.height/4), pugPic.width/2, pugPic.height/2 );
}