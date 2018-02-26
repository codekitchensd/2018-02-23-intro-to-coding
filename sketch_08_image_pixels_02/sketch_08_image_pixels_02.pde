PImage pugPic;

void setup() {
  size(320,320);
  background(255);
  
  ellipseMode(CENTER);
  noStroke();
  fill(0);
  
  // shrank the pug.jpg down to 32x32 pixels
  pugPic = loadImage("pugicon.jpg");
  pugPic.loadPixels();
  
  for (int y = 0; y < pugPic.height; y++){
    for (int x = 0; x < pugPic.width; x++) {
      println("coord: "+x+","+y);
      color thisPixel = pugPic.pixels[x+(y*pugPic.width)];
      int radius = floor(map(brightness(thisPixel), 0, 255, 10, 0));
      
      ellipse(5+(10*x), 5+(10*y), radius, radius);  
    }
  }
}

void draw() {
}