void setup() {
  size(600, 600);
  
  int numberOfSquares = 0;
  int numberOfSquaresWeWant = 5;
  while(numberOfSquares < numberOfSquaresWeWant) {
    rect(20 + numberOfSquares*75, 20, 55, 55);
    numberOfSquares = numberOfSquares + 1;
    println("In loop: ", numberOfSquares);
  }
  println("Left loop: ", numberOfSquares);
}
