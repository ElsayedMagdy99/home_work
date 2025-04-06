void main() {  
  var system = LoanProcessingSystem();

  
  var personalLoan = PersonalLoan('mohamed', 800000);
  var homeLoan = HomeLoan('ali', 600000);
  var carLoan = CarLoan('alaa', 70000);

  system.applyLoan(personalLoan);
  system.applyLoan(homeLoan);
  system.applyLoan(carLoan);

  system.calculateInstallments(12); 
}


abstract class Loan {
  String borrowerName;
  double loanAmount;
  double interestRate;

  Loan(this.borrowerName, this.loanAmount, this.interestRate);

  double calculateMonthlyInstallment(int months);
}

class PersonalLoan extends Loan {
  PersonalLoan(String borrowerName, double loanAmount)
      : super(borrowerName, loanAmount, 0.10);

  @override
  double calculateMonthlyInstallment(int months) {
    double monthlyRate = interestRate / 12;
    return (loanAmount * (monthlyRate)) / months;
  }
}


class HomeLoan extends Loan {
  HomeLoan(String borrowerName, double loanAmount)
      : super(borrowerName, loanAmount,
            loanAmount > 500000 ? 0.095 : 0.08); 

  @override
  double calculateMonthlyInstallment(int months) {
    double monthlyRate = interestRate / 12;
    return (loanAmount * (monthlyRate)) / months;
  }
}

class CarLoan extends Loan {
  CarLoan(String borrowerName, double loanAmount)
      : super(borrowerName, loanAmount, 0.07);

  @override
  double calculateMonthlyInstallment(int months) {
   
    if (loanAmount > 50000) {
      loanAmount += loanAmount * 0.02;
    }
    double monthlyRate = interestRate / 12;
      return (loanAmount*0.2 * (monthlyRate)) / months;

  }
}

class LoanProcessingSystem {
  List<Loan> loanList = [];

  
  void applyLoan(Loan loan) {
    loanList.add(loan);
  }
  void calculateInstallments(int months) {
    for (var loan in loanList) {
      double installment = loan.calculateMonthlyInstallment(months);
      print(
          '${loan.borrowerName} needs to pay a monthly installment of \$${installment.toStringAsFixed(2)}');
    }
  }
}




