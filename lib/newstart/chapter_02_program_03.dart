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
