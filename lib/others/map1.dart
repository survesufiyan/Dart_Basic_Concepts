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

  // Convert the Map to a List
  List<Map<String, dynamic>> usersList = users.values.toList();

  // Filter users by age > 25 and experience level
  var filteredUsers = usersList.where((user) =>
      user['age'] > 25 &&
      (user['experienceLevel'] == 'Intermediate' ||
          user['experienceLevel'] == 'Advanced'));

  // Print filtered users
  filteredUsers.forEach((user) {
    print("👤 ${user['name']} (Age: ${user['age']})");
    print("   🔹 Experience Level: ${user['experienceLevel']}\n");
  });
}
