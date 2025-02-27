/* Find Prime Numbers in a Range
 Write a function that takes two numbers (start, end) and returns a list of all prime numbers between
 them.
 Ensure that the function correctly identifies prime numbers and handles edge cases where start is
 greater than end*/


void main() {
  print(findPrimes(1, 10));
  print(findPrimes(10, 1));
  print(findPrimes(10, 20));
  print(findPrimes(20, 10));
}

List<int> findPrimes(int start, int end) {
  List<int> primes = [];
  if (start > end) {
    int temp = start;
    start = end;
    end = temp;
  }
  for (int i = start; i <= end; i++) {
    if (isPrime(i)) {
      primes.add(i);
    }
  }
  return primes;
}

bool isPrime(int num) {
  if (num <= 1) {
    return false;
  }
  for (int i = 2; i <= num / 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}
