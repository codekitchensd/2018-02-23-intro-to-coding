void setup() {
  size(600, 600);
  
  int numberOfSquaresWeWant = 5;
  for(int numberOfSquares = 0; numberOfSquares < numberOfSquaresWeWant; numberOfSquares++) {
    rect(20 + numberOfSquares*75, 20, 55, 55);
    println("In loop: ", numberOfSquares);
  }
  /*println("Left loop: ", numberOfSquares);*/ //doesn't exist
}
