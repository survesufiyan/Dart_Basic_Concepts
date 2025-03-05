main() {
  var s1 = 'Single quotes work well for string literals.';
  // String quotes can be escaped with a backslash
  var s2 = "Double quotes work just as well.";
  // String quotes can be escaped with a backslash or by using the other
  //delimiter type inside the string literal itself
  //(e.g., 'It\'s easy to escape the string delimiter.')
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";
  print(s1);
  print(s2);
  print(s3);
  print(s4);

  // Raw String
  var s = r'In a raw string, not even \n gets special treatment.';
  print(s);
}
// Output
// Single quotes work well for string literals.
// Double quotes work just as well.
// It's easy to escape the string delimiter.
// It's even easier to use the other delimiter.
// In a raw string, not even \n gets special treatment.
