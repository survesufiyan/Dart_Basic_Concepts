main() {
  // Converting string to int
  var one = int.parse('1');
  assert(one == 1);
  // Converting string to double
  var onePointOne = double.parse('1.1');
  // Converting int to string
  var oneAsString = 23.toString();
  // Converting double to string
  var piAsString = 3.14159.toStringAsFixed(2);
  // print(one);
  print(onePointOne);
  print(oneAsString);
  print(piAsString);
}
