/* Loan Subclasses
 Three types of loans should be implemented:
    - PersonalLoan: Has a fixed 10% interest rate.
    - HomeLoan: Has a base 8% interest rate, but if loanAmount > 500,000, the rate increases to 9.5%.
    - CarLoan: Has a 7% interest rate, but if loanAmount > 50,000, it applies an additional 2% processing fee*/


abstract class Loan {
  String borrowerName;
  double loanAmount;
  double interestRate;

  Loan(this.borrowerName, this.loanAmount, this.interestRate);

  double calculateMonthlyInstallment(int months);
}

class PersonalLoan extends Loan {
  PersonalLoan(String borrowerName, double loanAmount)
      : super(borrowerName, loanAmount, 10);

  @override
  double calculateMonthlyInstallment(int months) {
    return loanAmount * (1 + interestRate / 100) / months;
  }
}

class HomeLoan extends Loan {
  HomeLoan(String borrowerName, double loanAmount)
      : super(borrowerName, loanAmount, 8);

  @override
  double calculateMonthlyInstallment(int months) {
    if (loanAmount > 500000) {
      interestRate = 9.5;
    }
    return loanAmount * (1 + interestRate / 100) / months;
  }
}

class CarLoan extends Loan {
  CarLoan(String borrowerName, double loanAmount)
      : super(borrowerName, loanAmount, 7);

  @override
  double calculateMonthlyInstallment(int months) {
    if (loanAmount > 50000) {
      interestRate += 2;
    }
    return loanAmount * (1 + interestRate / 100) / months;
  }
}

void main() {
  PersonalLoan personalLoan = PersonalLoan('Amir badr', 100000);
  HomeLoan homeLoan = HomeLoan('tharwat samy', 500000);
  CarLoan carLoan = CarLoan('tharwat samy', 50000);

  print('Personal Loan Monthly Installment: ${personalLoan.calculateMonthlyInstallment(12)}');
  print('Home Loan Monthly Installment: ${homeLoan.calculateMonthlyInstallment(12)}');
  print('Car Loan Monthly Installment: ${carLoan.calculateMonthlyInstallment(12)}');
}
