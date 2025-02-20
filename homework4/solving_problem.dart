void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 5];

  bool check = false;
  for (int i = 0; i < numbers.length; i++) {
    for (int j = i+1; j < numbers.length; j++) {
      if (numbers[i] == numbers[j]) {
        check = true;
      }
    }
  }

  print(check);
}
