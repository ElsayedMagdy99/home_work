/*Write a function `calculateBonus(int salary, int yearsWorked)` that calculates a
bonus based on the following rules:
- If the employee has worked for 5 or more years, they get a 10% bonus.
- Otherwise, they get a 5% bonus.
The function should return the bonus amount.
Then, call the function inside `main()` and print the result. */
import 'dart:io';

void main() {
  print('enter salary ');
  int salary = int.parse(stdin.readLineSync()!);
  print('years worked');
  int yearsWorked = int.parse(stdin.readLineSync()!);
  calculateBonus(salary, yearsWorked);
  double bonus = calculateBonus(salary, yearsWorked);
  print('bonus is $bonus');
}

double calculateBonus(int salary, int yearsWorked) {
  double bonus = 0;
  bool isHeWorkedMoreThan5Years = yearsWorked >= 5;
  if (isHeWorkedMoreThan5Years) {
    bonus = salary * 10 / 100;
  } else {
    bonus = salary * 5 / 100;
  }

  return bonus;
}
