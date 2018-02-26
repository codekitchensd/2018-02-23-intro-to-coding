// 06 array

String[] groceries;

void setup() {
  size(400, 400);
  
  groceries = new String[5];
  groceries[0] = "milk";
  groceries[1] = "eggs";
  groceries[2] = "sugar";
  groceries[3] = "flour";
  groceries[4] = "chocolate";
  
  // OR you could do it this way
  //groceries = split("milk,eggs,sugar,flour,kumquat,pineapple",',');
  
  print("There are ");
  print(groceries.length);
  print(" items in the array, and they are... "); 
  println(groceries);
}