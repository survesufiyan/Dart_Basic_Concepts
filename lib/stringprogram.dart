import 'dart:io';

//importing dart:io package to use stdin and stdout
//function to take input from user and print the output
main()
// main function is the entry point of the program
{
  stdout.write("Enter a designation: ");
//stdout.write() is used to print the message on the console
  String? profession = stdin.readLineSync();
//stdin.readLineSync() is used to take input from the user
//String? is used to declare a nullable string variable
//profession is the variable name
//Sync is used to take input synchronously
  stdout.write("Enter a Company: ");
  String? company = stdin.readLineSync();
  stdout.write("Enter a location: ");
  String? location = stdin.readLineSync();
  print("I am a $profession at $company in $location");
//print() is used to print the message on the console
//profession, company and location are the variables
}

//Output
//Enter a designation: Developer
//Enter a Company: Google
//Enter a location: Bangalore

// Different types of comments in Dart
//Single line comment

/* Multi
There are 3 variables profession, company and location
The value of profession is Developer and it is a string
The value of company is Google and it is a string 
The value of location is Bangalore and it is a string
comment */

///Documentation comment
///This program is used to take input from the user and print the output
