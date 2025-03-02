/* Abstract Class: Loan
 Create an abstract class Loan with the following properties and methods:
    - borrowerName (String)
    - loanAmount (double)
    - interestRate (double)
    - Abstract method: double calculateMonthlyInstallment(int months)*/


abstract class Loan {
  String borrowerName;
  double loanAmount;
  double interestRate;

  Loan(this.borrowerName, this.loanAmount, this.interestRate);

  double calculateMonthlyInstallment(int months);
}

class HomeLoan extends Loan {
  HomeLoan(String borrowerName, double loanAmount, double interestRate)
      : super(borrowerName, loanAmount, interestRate);

  @override
  double calculateMonthlyInstallment(int months) {
    return loanAmount * (1 + interestRate / 100) / months;
  }
}

class CarLoan extends Loan {
  CarLoan(String borrowerName, double loanAmount, double interestRate)
      : super(borrowerName, loanAmount, interestRate);

  @override
  double calculateMonthlyInstallment(int months) {
    return loanAmount * (1 + interestRate / 100) / months;
  }
}

void main() {
  HomeLoan homeLoan = HomeLoan('Amir badr', 100000, 10);
  CarLoan carLoan = CarLoan('tharwat samy', 50000, 12);

  print('Home Loan Monthly Installment: ${homeLoan.calculateMonthlyInstallment(12)}');
  print('Car Loan Monthly Installment: ${carLoan.calculateMonthlyInstallment(12)}');
}

