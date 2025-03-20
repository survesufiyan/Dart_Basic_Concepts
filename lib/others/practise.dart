import 'dart:io';

void main() {
  print('Hello, World!');
  stdout.write('What is your name: ');
  var name = stdin.readLineSync();
  print('Welcome, $name');
}

class Practise {
  void printHello() {
    print('Hello, World!');
  }
}

//output
//Hello, World!
//What is your name: John Doe
//Welcome, John Doe
