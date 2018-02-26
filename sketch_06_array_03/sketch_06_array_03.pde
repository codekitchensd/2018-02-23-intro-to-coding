// 06 array

int[][] prev;

void setup() {
  size(400, 400);
  
  prev = new int[200][2];
  
  rectMode(CENTER);
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
  
  println("---");
  for (int count = 0; count < prev.length; count++) {
    noStroke();
    fill(int(255 * (float(prev.length-count)/float(prev.length))));
    println(prev.length, count, prev.length-count, float(prev.length-count)/float(prev.length));
    rect(prev[count][0],prev[count][1], 10,10);
  }
}