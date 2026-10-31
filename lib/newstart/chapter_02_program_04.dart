void main() {
  String shop = 'Sharma Chai';
  String name = 'ShaRma';
  print('Length: ${shop.length}');
  print('Upper: ${shop.toUpperCase()}');
  print('Lower: ${shop.toLowerCase()}');
  print('Trim: ${shop.trim()}');
  print("Copy: ${shop.replaceAll('Sharma', 'Kumar')}");
  print("Compare: ${shop.compareTo(name)}");
  print("Contains: ${shop.contains('Chai')}");
  print("Ends With: ${shop.endsWith('C')}");
  print("Index Of: ${shop.indexOf('Chai')}");
  String poem = '''
Roses are red,
Dart is fun.''';
  print(poem);
}
