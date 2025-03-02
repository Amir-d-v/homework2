/* LoanProcessingSystem Class
 Create a LoanProcessingSystem class that:
    - Stores a list of loans.
    - Provides methods to:
        - applyLoan(Loan loan): Adds a loan application to the system.
        - calculateInstallments(int months): Calculates the monthly installment for all loans*/

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

class LoanProcessingSystem {
  List<Loan> loans = [];

  void applyLoan(Loan loan) {
    loans.add(loan);
  }

  void calculateInstallments(int months) {
    for (Loan loan in loans) {
      print('${loan.runtimeType} Monthly Installment: ${loan.calculateMonthlyInstallment(months)}');
    }
  }
}

void main() {
  LoanProcessingSystem loanProcessingSystem = LoanProcessingSystem();

  PersonalLoan personalLoan = PersonalLoan('Amir badr', 100000);
  HomeLoan homeLoan = HomeLoan('tharwat samy', 500000);
  CarLoan carLoan = CarLoan('tharwat samy', 50000);

  loanProcessingSystem.applyLoan(personalLoan);
  loanProcessingSystem.applyLoan(homeLoan);
  loanProcessingSystem.applyLoan(carLoan);

  loanProcessingSystem.calculateInstallments(12);
}

