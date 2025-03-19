/*Write a function `uniqueNames(List<String> names)` that:
- Accepts a list of names.
- Returns a Set containing only unique names.
Call the function inside `main()` and print the result.*/

void main() {
  List<String> names = ['ali', 'ahmed', 'ali', 'mohamed', 'mahmoud', 'ali'];
  print(uniqueNames(names));
}

Set uniqueNames(List<String> names) {
  return Set<String>.from(names);
}
