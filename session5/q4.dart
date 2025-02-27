/* Write a Dart program to print the first 10 numbers in the Fibonacci sequence*/


// liner search

void main() {
  int n = 10;
  int first = 0;
  int second = 1;
  int next;
  print(first);
  print(second);
  for (int i = 2; i < n; i++) {
    next = first + second;
    first = second;
    second = next;
    print(next);
  }
}