void main() {
  Map<String, dynamic> map = {
    'name': 'John',
    'age': 23,
    'isStudent': true,
    'marks': [23, 45, 78, 90],
    'address': {'city': 'New York', 'state': 'New York', 'country': 'USA'}
  };

  print(map['name']);
  print(map['age']);
  print(map['isStudent']);
  print(map['marks']);
  print(map['address']);
  print(map['address']['city']);
  print(map['address']['state']);
  print(map['address']['country']);
}
