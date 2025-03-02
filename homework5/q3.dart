/* Check Leap Year
 Write a function that determines if a given year is a leap year.
 A year is a leap year if it is divisible by 4 but not divisible by 100, except if it is also divisible by 400*/

void main() {
  
  print(isLeapYear(1900));
  print(isLeapYear(2000));
}

bool isLeapYear(int year) {
  if (year % 4 == 0) {
    if (year % 100 == 0) {
      if (year % 400 == 0) {
        return true;
      }
      return false;
    }
    return true;
  }
  return false;
}
