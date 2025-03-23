/*Write a function that determines if a given year is a leap year.
A year is a leap year if it is divisible by 4 but not divisible by 100, except if it is also divisible by 400.
 */

import 'dart:io';

void main() {
  print('entar a year');

  int year = int.parse(stdin.readLineSync()!);
  print(isLeapYear(year));
}

bool isLeapYear(int year) {
  if (year % 4 == 0 && year % 400 == 0) {
    print('this is a leap year');
    return true;
  } else if (year % 100 != 0) {
    print('this is not a leap year');
    return false;
  } else {
    return false;
  }
}
