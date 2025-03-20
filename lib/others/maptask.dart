import 'dart:math';

void main() {
  Map<String, Map<String, dynamic>> users = {
    'user1': {
      'name': 'Shoeb',
      'age': 30,
      'favoriteFlutterWidget': 'Container',
      'experienceLevel': 'Intermediate'
    },
    'user2': {
      'name': 'Zaid',
      'age': 22,
      'favoriteFlutterWidget': 'Row',
      'experienceLevel': 'Beginner'
    },
    'user3': {
      'name': 'Shahbaz',
      'age': 25,
      'favoriteFlutterWidget': 'Column',
      'experienceLevel': 'Intermediate'
    },
    'user4': {
      'name': 'Ali',
      'age': 25,
      'favoriteFlutterWidget': 'Column',
      'experienceLevel': 'Advanced'
    },
    'user5': {
      'name': 'Ahmed',
      'age': 25,
      'favoriteFlutterWidget': 'Text',
      'experienceLevel': 'Beginner'
    },
  };
  print("📌 Users who love the 'Column' widget:\n");
  print("Printing the users age, and experience level \n");

  //users.forEach((key, value) is used to iterate over the
  //map and get the key and value of each element in the map
  // forEach is a higher order function that takes a function as an argument
  // The function that is passed to forEach is called a callback function
  // key is the key of the map and value is the value of the map
  // value is a map itself, so we can access the values of the map using value['key']

  print("📌 Users older than 25:\n");
  users.forEach((key, value) {
    if (value['age'] > 25) {
      print("👤 ${value['name']} (Age: ${value['age']})");
      print(
          "   🔹 Favorite Flutter Widget: ${value['favoriteFlutterWidget']}\n");
    }
  });

  print("📌 Users whose favorite widget is 'Column' or 'Text':\n");
  users.forEach((key, value) {
    if (value['favoriteFlutterWidget'] == 'Column' ||
        value['favoriteFlutterWidget'] == 'Text') {
      print("👤 ${value['name']} (Age: ${value['age']})");
      print(
          "   🔹 Favorite Flutter Widget: ${value['favoriteFlutterWidget']}\n");
    }
  });

  print("📌 Users who are 'Advanced':\n");
  users.forEach((key, value) {
    if (value['age'] == 30 || value['experienceLevel'] == 'Advanced') {
      print("👤 ${value['name']} (Age: ${value['age']})");
    }
  });

  var sortedUsers = users.values.toList()
    ..sort((a, b) => b['age'].compareTo(a['age']));
  sortedUsers.forEach((user) {
    print("👤 ${user['name']} (Age: ${user['age']})");
  });

  var filteredUsers = users.values.where((user) => user['age'] > 25);
  filteredUsers.forEach((user) {
    print("👤 ${user['name']} (Age: ${user['age']})");
  });
}
