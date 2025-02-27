/* Create a base class Shape with a method calculateArea(). Create two derived classes:- Circle with a property radius.- Rectangle with properties length and width.
 Override the calculateArea() method in both classes. Write a program to calculate and print the area
 of a circle and a rectangle*/


import 'dart:math';

class Shape {
  double calculateArea() {
    return 0;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double calculateArea() {
    return length * width;
  }
}

void main() {
  Circle circle = Circle(5);
  Rectangle rectangle = Rectangle(5, 10);

  print('Area of Circle: ${circle.calculateArea()}');
  print('Area of Rectangle: ${rectangle.calculateArea()}');
}


