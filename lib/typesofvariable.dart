/*
Strongly Typed Language: A strongly typed language is a programming language that is more likely to generate errors
 when a variable is assigned a value of the wrong data type. Strongly typed languages include Java, C, C++, and Swift.

Dynamically Typed Language: A dynamically typed language is a programming language that is more likely to generate errors
 when a variable is assigned a value of the wrong data type. Dynamically typed languages include Python, Ruby, and JavaScript.

*/
main() {
/*
int ;
String;
double ;
bool;
dynamic;

*/

  int a = 10;
  // int a is a variable of type integer and 10 is the value assigned to it.
  var b = 12;
  // var b is a variable of type integer and 12 is the value assigned to it.
  print('Value of a is $a' + ' Value of b is $b \n');

  String name = 'Sufiyan';
  // String name is a variable of type string and 'Sufiyan' is the value assigned to it.
  var name2 = 'Surve';
  // var name2 is a variable of type string and 'Surve' is the value assigned to it.
  print('Name is $name' + ' Name2 is $name2 \n');

  double c = 10.5;
  // double c is a variable of type double and 10.5 is the value assigned to it.
  var d = 11.5;
  // var d is a variable of type double and 11.5 is the value assigned to it.
  print('Value of c is $c' + ' Value of d is $d \n');

  bool e = true;
  // bool e is a variable of type boolean and true is the value assigned to it.
  var f = false;
  // var f is a variable of type boolean and false is the value assigned to it.
  print('Value of e is $e' + ' Value of f is $f \n');

  dynamic g = 10;
  /* dynamic g is a variable of type dynamic and 10 is the value assigned to it 
  which means we can change the type of the variable g at runtime 
*/
  var h = 'Sufiyan';
  print('Value of g is $g' + ' Value of h is $h \n');
}

// Output
// Value of a is 10 Value of b is 12
// Name is Sufiyan Name2 is Surve
// Value of c is 10.5 Value of d is 11.5
// Value of e is true Value of f is false
// Value of g is 10 Value of h is Sufiyan
