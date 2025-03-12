/*Objective: Practice conditional statements with integer values.
Instructions:
- Create an integer variable marks.
- If marks is 70 or higher, print 'Passed', otherwise print 'Failed'. */
 import 'dart:io';
void main() {
  print('Enter Your Grade');
  
  int marks= int.parse( stdin.readLineSync()!) ;

  bool isMarksHigherThanOrEqual70 = marks >= 70;

  if (isMarksHigherThanOrEqual70) {
    print('Passed');
  } else {
    print('Failed');
  }
}
