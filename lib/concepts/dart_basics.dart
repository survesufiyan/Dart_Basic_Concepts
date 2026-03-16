// DART BASICS - Variables, Functions, and Control Flow

// 1. VARIABLES AND DATA TYPES
void dartVariables() {
  // Type inference
  var name = 'John'; // inferred as String
  int age = 25;
  double salary = 50000.50;
  bool isActive = true;
  List<int> numbers = [1, 2, 3, 4, 5];
  Map<String, dynamic> person = {'name': 'John', 'age': 25, 'city': 'New York'};

  // final - cannot be changed after assignment
  final String country = 'USA';
  // country = 'UK'; // Error: can't assign to final variable

  // const - compile-time constant
  const double PI = 3.14159;

  print('Name: $name, Age: $age');
  print('Numbers: $numbers');
  print('Person: $person');
}

// 2. FUNCTIONS
// Basic function
int add(int a, int b) {
  return a + b;
}

// Arrow function
int multiply(int a, int b) => a * b;

// Function with default parameters
void greet(String name, {String greeting = 'Hello'}) {
  print('$greeting, $name!');
}

// Function with positional optional parameters
String getFullName(String firstName, [String? lastName]) {
  if (lastName == null) {
    return firstName;
  }
  return '$firstName $lastName';
}

// 3. CLASSES AND OBJECTS
class Car {
  String brand;
  String color;
  int year;

  // Constructor
  Car(this.brand, this.color, this.year);

  // Named constructor
  Car.fromMap(Map<String, dynamic> map)
      : brand = map['brand'],
        color = map['color'],
        year = map['year'];

  // Method
  void displayInfo() {
    print('$year $color $brand');
  }

  // Getter
  int get age => DateTime.now().year - year;

  // Setter
  set updateYear(int newYear) => year = newYear;
}

// 4. INHERITANCE
class Vehicle {
  String brand;

  Vehicle(this.brand);

  void drive() {
    print('$brand is driving');
  }
}

class Bike extends Vehicle {
  int gears;

  Bike(String brand, this.gears) : super(brand);

  @override
  void drive() {
    print('$brand bike with $gears gears is driving');
  }
}

// 5. ABSTRACT CLASSES AND INTERFACES
abstract class Animal {
  void sound();
  void move();
}

class Dog extends Animal {
  @override
  void sound() {
    print('Woof!');
  }

  @override
  void move() {
    print('Dog is running');
  }
}

// 6. MIXINS
mixin Swimmer {
  void swim() {
    print('Swimming...');
  }
}

mixin Flyer {
  void fly() {
    print('Flying...');
  }
}

class Duck with Swimmer, Flyer {
  void quack() {
    print('Quack!');
  }
}

// 7. GENERICS
class Container<T> {
  T? _value;

  void setValue(T value) {
    _value = value;
  }

  T? getValue() {
    return _value;
  }
}

// 8. CONTROL FLOW
void controlFlow() {
  int num = 10;

  // If-else
  if (num > 0) {
    print('Positive');
  } else if (num < 0) {
    print('Negative');
  } else {
    print('Zero');
  }

  // Switch
  String day = 'Monday';
  switch (day) {
    case 'Monday':
      print('Start of week');
      break;
    case 'Friday':
      print('End of week');
      break;
    default:
      print('Mid-week');
  }

  // Loops
  for (int i = 0; i < 5; i++) {
    print(i);
  }

  // While
  int count = 0;
  while (count < 3) {
    print(count);
    count++;
  }

  // For-in
  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  for (String fruit in fruits) {
    print(fruit);
  }
}

// 9. EXCEPTION HANDLING
void exceptionHandling() {
  try {
    int result = 10 ~/ 0; // Integer division by zero
  } on IntegerDivisionByZeroException {
    print('Cannot divide by zero');
  } catch (e) {
    print('Error: $e');
  } finally {
    print('Cleanup code here');
  }
}

void main() {
  dartVariables();
  print('Add: ${add(5, 3)}');
  print('Multiply: ${multiply(5, 3)}');
  greet('Alice');
  greet('Bob', greeting: 'Hi');

  Car car = Car('Toyota', 'Red', 2020);
  car.displayInfo();
  print('Age: ${car.age}');

  Bike bike = Bike('Honda', 5);
  bike.drive();

  Duck duck = Duck();
  duck.quack();
  duck.swim();
  duck.fly();

  Container<String> stringContainer = Container();
  stringContainer.setValue('Hello');
  print('Container value: ${stringContainer.getValue()}');
}
