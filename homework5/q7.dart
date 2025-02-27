/*Reverse a String
 Write a function that takes a string as input and returns the string reversed.
*/


void main() {
  print(reverseString('thrwat samy'));
}

String reverseString(String str) {
  return str.split('').reversed.join();
}

