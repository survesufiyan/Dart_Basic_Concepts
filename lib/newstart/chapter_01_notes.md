 what is dart? 
Dart is a programming language designed for client development, such as for the web and mobile apps. 
It is developed by Google and is used to build applications for Android, iOS, Windows, Mac, Linux, Google Fuchsia, and the web. 
Dart is optimized for UI, offering features like hot reload, a rich standard library, and strong typing.

what is return type meaning in dart?
In Dart, the return type of a function specifies the type of value that the function will return

How did i know about what function will return which type of value?
You can determine the return type of a function in Dart by looking at the function's signature.
example:
main(){
print("Hello, Dart!");
print('Name: Sufiyan');
print('Age: 26');
print('Country: India'); 
}

What is the difference between Dart and Flutter?
Dart and Flutter are related but serve different purposes in the development ecosystem.
Dart is a programming language developed by Google, designed for building web, server, and mobile applications. 
It is an object-oriented, class-based language with a syntax similar to JavaScript and Java. Dart is used to write the logic and functionality of applications.

Which function is the starting point of every Dart program?
The `main()` function is the starting point of every Dart program.

What does void mean in void main()?
In Dart, `void` is a return type that indicates the function does not return any value.

Write a program that prints your name, your college or school, and your favourite food on three separate lines.
Here is a simple Dart program that prints your name, your college or school, and your favorite food on three separate lines:
```dart
void main() {
  print('Name: Sufiyan');
  print('College/School: XYZ College');
  print('Favorite Food: Biryani');
}
```
Find and fix the errors: Void main() { print('Hello') }
The error in the code is that the return type `Void` should be lowercase `void`. Here is the corrected code:
```dart
void main() {
  print('Hello');
}
```