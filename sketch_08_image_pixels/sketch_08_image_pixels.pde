PImage pugPic;

void setup() {
  size(400,400);
  background(50);
  // change the color mode from Red, Green, Blue 
  //  to Hue, Saturation, and Brightness
  colorMode(HSB, 255);
  
  pugPic = loadImage("pug.jpg");
  pugPic.loadPixels();
  // ...produces pugPic.pixels[], a 1D array
  
  for (int y = 0; y < pugPic.height; y++){
    for (int x = 0; x < pugPic.width; x++) {
      
      color thisPixel = pugPic.pixels[x+(y*pugPic.width)];
      pugPic.pixels[x+(y*width)] = color(hue(thisPixel), 0, brightness(thisPixel));
      
    }
  }
  pugPic.updatePixels();
  image(pugPic, 0,0);
}

void draw() {
}