void main() {
  List<int> age = [24, 25, 26, 27, 28, 29, 30];
  age.add(31); // Add new age to the list
  // List is a collection of items
  // Map is a collection of key-value pairs
  // The key and value can be of any type
  // The key should be unique
  // The value can be duplicate
  // dynamic is a data type that can store any type of data

  // Loop through the List
  // for (int i = 0; i < age.length; i++) {
  //   print("Age: ${age[i]}");
  // }

  // for (int a in age) explanation of this line
  // for (int a in age) is a for-each loop in Dart
  // It is used to iterate over the items of a collection
  // Here, it is used to iterate over the items of the List
  // The variable 'a' will hold the value of each item in the List
  // The loop will run until all the items in the List are processed
  // The loop will automatically handle the index and value of the items
  // The loop will stop when all the items in the List are processed
  // The loop will not run if the List is empty
  // in is a keyword used to separate the variable and the collection
  // age is the List that we want to iterate over using the loop statement 'for'

  for (int a in age) {
    print("Age: $a");
  }

  Map<String, dynamic> details = {
    'price': 46.39,
    'name': 'Tausif',
    'isFlutterFun': true
  };
  details['country'] = 'India'; // Add new key-value pair to the map
  // Loop through the Map
  details.forEach((key, value) {
    print("$key: $value");
  });

  /*
  print("First age in the list: ${age[0]}"); // Access first element
  print("Name from details: ${details['name']}"); // Access value using key

  print("Updated age list: $age");
  print("Updated details: $details");
*/
}
