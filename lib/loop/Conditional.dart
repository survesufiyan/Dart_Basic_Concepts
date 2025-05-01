/*void main() {
  var i = 10;
  if (i > 0) {
    print('Positive Integer');
  } else if (i < 0) {
    print('Negative Integer');
  } else if (i == 0) {
    print('Zero');
  }
}

*/
/*
  Output: 
  Positive Integer
  
  In the above example, the value of the variable  i  is 10. The  if  statement checks if the value of  i  is greater than 0. Since the value of  i  is 10, the condition is true and the statement inside the  if  block is executed. 
  If the value of  i  is less than 0, the  else if  block is executed. If the value of  i  is equal to 0, the  else if  block is executed. 
  Nested if-else statement 
  The  if-else  statement can be nested inside another  if-else  statement. 
  Syntax: 
  if (condition1) {
    // code block
    if (condition2) {
      // code block
    } else {
      // code block
    }
  } else {
    // code block
  }
  
  */
import 'dart:io';

void main() {
  print('Enter a number: ');

  // var input = stdin.readLineSync();
  /*
  The stdin.readLineSync()  method reads the input from the user as a string.
*/

  // int num = int.parse(input!);
  /*
  The int.parse()  method converts the string input to an integer.
  int.parse()  method throws an exception if the input is not a valid integer.
  input!  is used to tell the compiler that the input is not null.
*/
  var input = stdin.readLineSync();
  int num = int.parse(input!);
  if (num > 0) {
    print('Positive Integer');
  } else if (num < 0) {
    print('Negative Integer');
  } else if (num == 0) {
    print('Zero');
  }
}
