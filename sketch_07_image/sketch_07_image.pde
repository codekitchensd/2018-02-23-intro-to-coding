// using https://unsplash.com/photos/3lL_Nlvpl08 by Matthew Henry
PImage pugPic;

void setup() {
  size(400,400);
  background(50);
  pugPic = loadImage("pug.jpg");
}

void draw() {
  image(pugPic, 0,0);
}