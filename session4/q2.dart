/*Topic: Variables, Data types (int, double, String, bool)
 Exercise: Create a Dart program that declares and initializes variables of different types (int, double, String, bool).
 Calculate the sum of two numbers, concatenate two strings, and print out the results*/

void main() {
  int num1 = 10;
  int num2 = 20;
  double num3 = 10.5;
  double num4 = 20.5;
  String name = 'Amir';
  String lastName = 'Badr';
  bool isTrue = true;
  bool isFalse = false;

  int sum = num1 + num2;
  double sum2 = num3 + num4;
  String fullName = name + ' ' + lastName;

  print('Sum of two numbers: $sum');
  print('Sum of two double numbers: $sum2');
  print('Full Name: $fullName');
}