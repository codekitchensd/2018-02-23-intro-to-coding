// 06 array

int[] prevX;
int[] prevY;

void setup() {
  size(400, 400);
  
  prevX = new int[20];
  prevY = new int[20];
  
  rectMode(CENTER);
}

void draw() {
  for (int xIndex = 0; xIndex < prevX.length; xIndex++) {
    if (xIndex == prevX.length - 1) {
      prevX[xIndex] = mouseX;
    } else {
      prevX[xIndex] = prevX[xIndex+1];
    }
  }
  for (int yIndex = 0; yIndex < prevY.length; yIndex++) {
    if (yIndex == prevY.length - 1) {
      prevY[yIndex] = mouseY;
    } else {
      prevY[yIndex] = prevY[yIndex+1];
    }
  }
  background(248);
  
  for (int count = 0; count < prevX.length; count++) {
    noStroke();
    fill(int(255/prevX.length)*(prevX.length-count));
    rect(prevX[count],prevY[count], 10,10);
  }
}