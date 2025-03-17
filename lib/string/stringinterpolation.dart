main() {
  int age = 35;
  // String interpolation in Dart is done using $ symbol
  //followed by the variable name.
  var str = "My age is $age";
  // For expressions, you can use ${expression}
  var str2 = "My age after 5 years will be ${age + 5}";
  // You can also use functions in the expressions
  print(str);
  print(str2);
}

// Output
// My age is 35
