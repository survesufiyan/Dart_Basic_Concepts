import 'dart:io';

main() {
  print("Hello World");
  print(12 + 12);
  stdout.writeln("Enter your name:");
  String name = stdin.readLineSync()!;
  print("Hello, $name!");
}
