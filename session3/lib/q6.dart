/*- Task 1: Create a map representing a student with keys for name, age, and grade. Add, update,
 and remove entries from the map, printing the map after each operation.- Task 2: Iterate over the map and print each key-value pair */

void main() {
  Map<String, dynamic> student = {'name': 'ali', 'age': 21, 'grade': 80};

  student['nationality'] = 'Egyption';
  print(student);
   student.remove('name');
  print(student);

  student.forEach((name, age) {
    print('$name is $age ');
  });
}
