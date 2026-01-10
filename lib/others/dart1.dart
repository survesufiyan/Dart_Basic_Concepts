import 'dart:io';

void main() {
  int age;
  String name;
// enter your name and age from user input
  name = stdin.readLineSync()!;
  age = int.parse(stdin.readLineSync()!);
  print("Your name is $name and your age is $age");
}
