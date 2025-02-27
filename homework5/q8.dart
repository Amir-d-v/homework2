/* Sum of List Elements
 Write a function that takes a list of numbers and returns the sum of all elements.
 Example:
 sumList([1, 2, 3, 4, 5]) -> 15*/


void main() {
  print(sumList([1, 2, 3, 4, 5]));
  print(sumList([10, 20, 30, 40, 50]));
}

int sumList(List<int> numbers) {
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }
  return sum;
}