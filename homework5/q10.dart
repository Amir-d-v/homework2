/* Employee Payroll System
 Implement an employee payroll system.
 Create a base Employee class with properties: name, id, and salary.
 Implement a method calculateSalary() in the base class.
 Create two subclasses:- FullTimeEmployee: Adds a bonus and overrides calculateSalary() to include the bonus.- PartTimeEmployee: Adds hoursWorked and hourlyRate, overriding calculateSalary() to compute
 salary based on hours worked*/


import 'class_employee.dart';


void main() {
  FullTimeEmployee fullTimeEmployee = FullTimeEmployee('Amir', 1, 50000, 5000);
  PartTimeEmployee partTimeEmployee = PartTimeEmployee('ahmed', 2, 20, 100);

  print(fullTimeEmployee.calculateSalary());
  print(partTimeEmployee.calculateSalary());
}
