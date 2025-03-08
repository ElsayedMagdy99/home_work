/*What is the difference between var and dynamic in Dart? Provide an example of
each.*/
void main() {
//dynamic: can change TYPE of the variable, & can change VALUE of the variable later in code
//var: can't change TYPE of the variable, but can change VALUE of the variable later in code
  dynamic name = 'ali';
  name = 123;
  var number = 123;
 // number = 'ali';
  number = 456;
}
