/*Create a class `Person` with the following attributes:
- `String name`
- `int? age` (nullable)
- `bool isStudent` (default is false)
Implement:
- A constructor that initializes `name` and `age`.
- A method `displayInfo()` that prints the person's details.
In `main()`, create an instance of `Person` and call `displayInfo()`.*/

void main() {
  var person = Person('mohamed', 25);
  person.displayInfo();
}

class Person {
  String name;
  int? age;
  bool isStudent = false;
  Person(this.name, this.age, {this.isStudent = false});

  void displayInfo() {
    print('name : $name');
    print('age : $age');
    print('isStudent : ${isStudent ? 'yes' : 'No'}');
  }
}
