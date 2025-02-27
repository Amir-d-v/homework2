/* Temperature Converter
 Write a function that converts temperature from Celsius to Fahrenheit and vice versa.
 Accept temperature value and unit ('C' for Celsius, 'F' for Fahrenheit) as inputs.
 Convert accordingly and return the result.*/

void main() {
  print(convertTemperature(32, 'C'));
  print(convertTemperature(100, 'F'));
}

double convertTemperature(double temp, String unit) {
  if (unit == 'C') {
    return (temp * 9 / 5) + 32;
  } else if (unit == 'F') {
    return (temp - 32) * 5 / 9;
  }
  return 0;
}


