/* what is a function?
A function is a block of code that performs a specific task. It can take inputs, called
parameters, and can return a value. Functions help in organizing code, making it reusable and easier
to read.

In Dart, functions can be defined using the `void` keyword if they do not return a value, 
or with a specific return type if they do. 
Functions can also take parameters and can be called with arguments.

What is used for?
Functions are used to encapsulate logic, perform operations, and return results. They help in breaking
down complex problems into smaller, manageable pieces. Functions can be reused multiple times,
which reduces code duplication and enhances maintainability.

why we use main function?
The `main` function is the entry point of a Dart application. It is where the program starts executing.
Every Dart application must have a `main` function, and it is typically defined as
`void main() {}`. The `main` function can call other functions, perform operations, and control the flow of the program.

what is the meaning of the final keyword?
The `final` keyword in Dart is used to declare a variable that can only be set once.
Once a `final` variable is assigned a value, it cannot be changed. This is useful
for defining constants or values that should not be modified after their initial assignment.

   Example of a simple Dart function and its usage
   This example demonstrates how to define and call functions in Dart, including passing parameters
   and returning values. It also shows how to use named parameters in functions.
*/
void main() {
// ignore: non_constant_identifier_names
  final Greeting = greet(10, "Prosmart");
  print(Greeting);

  final mobileNumber = mobile(moobileNumber: 12220523624, name: "Sufiyan");
  print(mobileNumber);
}

/* 
what dose the return keyword do?
The `return` keyword in Dart is used to exit a function and optionally return a value to
the caller. When a function is called, it can perform some operations and then use the `return`
keyword to send a value back to the part of the code that called it. If a function does not
return a value, it can simply use `return;` to exit the function
without returning anything.

what dose the required keyword do?
The `required` keyword in Dart is used to indicate that a named parameter must be provided when
calling a function. It is used in the function signature to enforce that the caller must supply
a value for that parameter. If a required parameter is not provided, the Dart compiler will throw
an error, ensuring that the function has all the necessary information to execute properly.

what is the meaning of the named parameter?
Named parameters in Dart allow you to specify parameters by name when calling a function.
This makes the function calls more readable and allows you to pass parameters in any order.
Named parameters are defined within curly braces `{}` in the function signature, and they can be
marked as `required` to ensure that they must be provided when the function is called.


what is the used of String? in the function signature?
In Dart, `String?` in the function signature indicates that the parameter is of type `String` and can be `null`. 
The question mark (`?`) signifies that the parameter is nullable, meaning it can either hold a `String` value or be `null`. 
This is useful for cases where you want to allow the absence of a value or when the value is optional.


*/
mobile({required int moobileNumber, String? name}) {
  return ("Mobile number is $moobileNumber and name is $name");
}

greet(name, age) {
  return ("Hello $name, you are $age years old.");
}
