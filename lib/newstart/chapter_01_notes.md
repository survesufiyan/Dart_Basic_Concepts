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

what is meaning of runtime and compile time in Dart?
In Dart, "compile time" refers to the phase when the Dart code is being converted into machine code or an intermediate representation before execution. 
During this phase, the Dart compiler checks for syntax errors, type checking, and other compile-time validations.
"Runtime" refers to the phase when the compiled code is actually executed. 
During runtime, the program runs, and any dynamic behavior, such as user input, file I/O, or network requests, occurs. 
Errors that occur during this phase are called runtime errors.

what are types of errors in Dart?
In Dart, there are several types of errors that can occur during the execution of a program.
1. **Compile-time errors**: These errors occur during the compilation phase and prevent the code from being successfully compiled. 
Examples include syntax errors, type mismatches, and missing imports.
2. **Runtime errors**: These errors occur while the program is running and can cause the program to crash or behave unexpectedly. 
Examples include null reference errors, division by zero, and out-of-bounds array access.

Another then Compile-time  and Runtime errors, Dart also has:
3. **Logical errors**: These errors occur when the program runs without crashing, but it produces incorrect results due to a flaw in the logic of the code.

where this come from like compile-time and runtime errors?
The concepts of compile-time and runtime errors come from the general principles of programming languages and software development.
- **Compile-time errors** are a result of the static analysis performed by the compiler before the program is executed. 
They are detected during the compilation phase when the source code is translated into machine code or an intermediate representation.
- **Runtime errors** occur during the execution of the program when the code is running. 
These errors are often caused by unexpected conditions or inputs that the program encounters while it is running, such as trying to access an 
element in a list that doesn't exist or dividing by zero.

Example of compile-time error:
```dart
void main() {
  int x = 'Hello'; // This will cause a compile-time error because of type mismatch
}

Example of runtime error:
```dart
void main() {
  List<int> numbers = [1, 2, 3];
  print(numbers[5]); // This will cause a runtime error because index 5 is out of bounds
}


what are the principles of programming languages?
The principles of programming languages refer to the fundamental concepts and guidelines that govern the design, implementation, and use of programming languages. 
These principles help ensure that programming languages are effective, efficient, and user-friendly. Some key principles include:
1. **Syntax and Semantics**: The syntax defines the structure and rules for writing valid code, while semantics defines the meaning of the code and how it behaves when executed.
2. **Abstraction**: This principle allows programmers to manage complexity by providing a way to represent complex systems using simpler models or interfaces.
3. **Modularity**: This principle encourages breaking down a program into smaller, manageable, and reusable components or modules.
4. **Encapsulation**: This principle involves bundling data and methods that operate on that data within a single unit (e.g., a class) and restricting access to the internal details of that unit.
5. **Polymorphism**: This principle allows objects of different types to be treated as objects of a common super type, enabling code reusability and flexibility.