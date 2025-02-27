/*Basic Arithmetic Calculator
 Write a function that takes two numbers and an operator (+, -, *, /) as input and returns the result.
 Handle cases where division by zero might occur.*/


void main() {
  print(calculate(2, 3, '+'));
  print(calculate(2, 3, '-'));
  print(calculate(2, 3, '*'));
  print(calculate(2, 3, '/'));
}

double calculate(double a, double b, String operator) {
  switch (operator) {
    case '+':
      return a + b;
    case '-':
      return a - b;
    case '*':
      return a * b;
    case '/':
      if (b == 0) {
        return double.infinity;
      }
      return a / b;
    default:
      return 0;
  }
}
