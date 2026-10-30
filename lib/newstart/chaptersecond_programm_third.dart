import 'dart:io';

main() {
  final firstName = 'John';
  final lastName = 'Doe';
  final age = 30;
  const city = 'New York';
  var updatedAge = 0; // take a variable to update the age from user input
  print('Enter your updated age:$updatedAge');
  print('First Name: $firstName');
  print('Last Name: $lastName');
  print('Age: $age');
  print('City: $city');

  updatedAge; // take a variable to update the age from user input
  print('Enter your updated age:');
  updatedAge = int.parse(stdin.readLineSync()!);
  print('Updated Age: $updatedAge');

  final updatedCity;
  print('Enter your updated city:');
  updatedCity = stdin.readLineSync();
  print('Updated City: $updatedCity');
}

/*
what is the final keyword in dart?
In Dart, the `final` keyword is used to declare a variable that can only be assigned once. 
Once a `final` variable has been assigned a value, it cannot be changed or reassigned. 
This is useful for creating read-only variables that should not be modified after their initial assignment.
example:
final name = 'John'; // This variable can only be assigned once and cannot be changed later
final age = 30; // This variable can only be assigned once and cannot be changed later
final city; // This variable can be assigned a value later, but only once
print('Enter your city:');
city = stdin.readLineSync(); // Assigning a value to the final variable
print('City: $city'); // This will print the assigned value of the final variable

what is the const keyword in dart?
In Dart, the `const` keyword is used to declare a compile-time constant. 
A `const` variable must be assigned a value at the time of declaration, and that value must be known at compile time. 
Unlike `final`, which allows for runtime assignment, `const` ensures that the value is immutable and cannot be changed throughout the program.

*/
