// 06 array

int[][] prev;

void setup() {
  size(400, 400);
  
  prev = new int[20][2];
}

void draw() {
  for (int index = 0; index < prev.length; index++) {
    if (index == prev.length - 1) {
      prev[index][0] = mouseX;
      prev[index][1] = mouseY;
    } else {
      prev[index][0] = prev[index+1][0];
      prev[index][1] = prev[index+1][1]; 
    }
  }
  
  background(248);
  
  for (int count = 0; count < prev.length; count++) {
    int pCount = count-1;
    if (pCount < 0) pCount = 0;
    noFill();
    stroke(int(255/prev.length)*(prev.length-count));
    line(prev[count][0],prev[count][1], prev[pCount][0], prev[pCount][1]);
  }
}