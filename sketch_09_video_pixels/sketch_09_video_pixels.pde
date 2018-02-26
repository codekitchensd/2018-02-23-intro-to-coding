// 09 video pixels, adapted from
/**
 * Mirror 2 
 * by Daniel Shiffman. 
 *
 * Each pixel from the video source is drawn as a rectangle with size based on brightness.  
 */
 
import processing.video.*;

// Size of each cell in the grid
int cellSize = 15;
// Number of columns and rows in our system
int cols, rows;
// Variable for capture device
Capture video;


void setup() {
  size(640, 480);
  // Set up columns and rows
  cols = width / cellSize;
  rows = height / cellSize;
  colorMode(RGB, 255, 255, 255, 100);
  ellipseMode(CENTER);

  // This the default video input, see the GettingStartedCapture 
  // example if it creates an error
  video = new Capture(this, width, height);
  
  // Start capturing the images from the camera
  video.start();  

  background(0);
}


void draw() { 
  if (video.available()) {
    video.read();
    video.loadPixels();
    
    background(255);

    // Begin loop for columns
    for (int i = 0; i < cols;i++) {
      // Begin loop for rows
      for (int j = 0; j < rows;j++) {

        // Where are we, pixel-wise?
        int x = i * cellSize;
        int y = j * cellSize;
        int loc = (video.width - x - 1) + y*video.width; // Reversing x to mirror the image

        // Draw circles with a size determined by brightness
        color c = video.pixels[loc];
        float radius = map(brightness(c), 0, 255, cellSize, 0);
        fill(0);
        noStroke();
        ellipse(x + cellSize/2, y + cellSize/2, radius, radius);
      }
    }
  }
}