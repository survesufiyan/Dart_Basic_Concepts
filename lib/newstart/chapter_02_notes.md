what is varible in dart?
In Dart, a variable is a named storage location that holds a value. Variables can store different types of data, such as numbers, strings, booleans, and more.
 You can declare a variable using the `var` keyword, which allows Dart to infer the type of the variable based on the assigned value. 
 Alternatively, you can explicitly specify the type of the variable.
 example of variable declaration in Dart:
```dart
var shop = 'Sharma Chai';
var cups = 3;
var pricePerCup = 15.5;
var isOpen = true;
```
String shop = 'Sharma Chai'; // String variable
int cups = 3; // Integer variable
double pricePerCup = 15.5; // Double variable
bool isOpen = true; // Boolean variable

what are the different string methods are used?
The different string methods used in this code are:
1. length: Returns the number of characters in the string.
2. toUpperCase(): Converts all characters in the string to uppercase.
3. toLowerCase(): Converts all characters in the string to lowercase.
4. trim(): Removes any leading and trailing whitespace from the string.
5. replaceAll(): Replaces all occurrences of a specified substring with another substring.
6. compareTo(): Compares the string with another string and returns an integer indicating their relative order.
7. contains(): Checks if the string contains a specified substring and returns a boolean value.
8. endsWith(): Checks if the string ends with a specified substring and returns a boolean value.
9. indexOf(): Returns the index of the first occurrence of a specified substring in the string.

what is var in dart? 
In Dart, `var` is a keyword used to declare a variable without explicitly specifying its type. When you use `var`, the Dart compiler infers the type of the variable based on the value assigned to it at runtime. Once the type is inferred, it cannot be changed later in the code.

What does this code do?
This code defines a `main` function that initializes four variables: `firstName`, `lastName`, `age`, and `city`. 
It then prints the values of these variables to the console. 
After that, it updates the value of the `city` variable to 'Los Angeles' and prints the updated city value.
Finally, it updates the value of the `city` variable to 'Chicago' and prints the updated city value.

What is city?
The variable `city` is a string that represents the name of a city.
Initially, it is set to 'New York', but it is later updated to 'Los Angeles'.
Finally, it is updated to 'Chicago'.

What is this line of code mean?
The line `city = 'Los Angeles';` updates the value of the `city` variable to 'Los Angeles'.
It means that the previous value of `city` ('New York') is replaced with the new value ('Los Angeles').

why it is not showing error will i am using city variable again?
In Dart, variables can be reassigned to new values as long as they are not declared as `final` or `const`. 
In your code, the variable `city` is declared using `var`, which allows it to be reassigned. 
Therefore, when you update the value of `city` to 'Los Angeles', it does not cause an error because Dart allows you to change the value of a variable that is not final or constant.

Will trying to use city variable without declaring var keyword will give error?
Yes, if you try to use the `city` variable without declaring it first (using `var`, `final`, or `const`), 
Dart will throw an error indicating that the variable is undefined.
error: Undefined name 'city'.
Try correcting the name to one that is defined, or defining the name.

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

Why most of developers use final and const not var in dart?
Most developers prefer to use `final` and `const` over `var` in Dart for several reasons:
1. Immutability: `final` and `const` promote immutability, which can lead to safer and more predictable code. 
Immutable variables cannot be changed after they are assigned, reducing the risk of unintended side effects.
2. Readability: Using `final` and `const` makes it clear to other developers that the variable is intended to be immutable, improving code readability and maintainability.
3. Performance: `const` variables are evaluated at compile time, which can lead to performance  optimizations. 
Since their values are known at compile time, the Dart compiler can optimize the code more effectively.  

what is meaning of .toUpperCase() in Dart?
In Dart, the `.toUpperCase()` method is used to convert all the characters in a string to uppercase letters. 
For example, if you have a string like "hello", calling `toUpperCase()` on it will return "HELLO". 
This method does not modify the original string; instead, it returns a new string with all uppercase characters.

what is meaning of .length in Dart?
The `.length` property in Dart returns the number of characters in a string.

How many types of properties are there in Dart?
In Dart, properties can be categorized into several types, including:
1. **Instance Properties**: These are properties that belong to an instance of a class. They can be accessed using the instance of the class.
2. **Static Properties**: These are properties that belong to the class itself rather than any instance. They can be accessed using the class name.
Example:
```dart
class MyClass {
  static int staticProperty = 42; // Static property
  int instanceProperty; // Instance property

  MyClass(this.instanceProperty);
}
Disavantages of using properties in Dart:
1. **Encapsulation Issues**: If properties are not properly encapsulated, it can lead to unintended access and modification of data, 
which can compromise the integrity of the object.
2. **Performance Overhead**: Accessing properties, especially if they involve getters and setters, 
can introduce performance overhead compared to direct field access.  
