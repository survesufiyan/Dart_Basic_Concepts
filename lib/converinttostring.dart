void main() {
  // Converting int to string
  String oneAsString = 1.toString();
  // assert(oneAsString == '1') is used to check if the value is equal to the
  //expected value
  assert(oneAsString == '1');
  // Converting double to string
  String piAsString = 3.14159.toStringAsFixed(2);
  // assert(piAsString == '3.14') is used to check if the value is equal to the
  assert(piAsString == '3.14');
  // Converting double to string
  String piAsString2 = 3.14159.toStringAsFixed(3);
  assert(piAsString2 == '3.142');
  print(oneAsString);
  print(piAsString);
  print(piAsString2);
}
