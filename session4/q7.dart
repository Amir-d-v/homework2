/* Topic: Functions, Parameters, Return statement
 Exercise: Create a function called calculateGrade that takes a score (0 to 100) as a parameter and returns a letter grade
 (e.g., A, B, C). Then write a main function to call calculateGrade and print the grade for a given score*/


import 'calculate_grade.dart';

void main() {
  int score = 85;
  String grade = calculateGrade(score);
  print('Grade: $grade');
}
