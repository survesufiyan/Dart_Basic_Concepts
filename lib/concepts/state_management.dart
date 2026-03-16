import 'package:flutter/material.dart';

void main() {
  runApp(const StateManagementApp());
}

class StateManagementApp extends StatelessWidget {
  const StateManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Management Concepts',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

// ===== 1. setState (Local State Management) =====
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  String name = 'Flutter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('setState Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter: $counter',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                  name = 'Updated Flutter';
                });
              },
              child: const Text('Increment'),
            ),
            const SizedBox(height: 20),
            Text('Name: $name'),
          ],
        ),
      ),
    );
  }
}

// ===== 2. Provider Pattern (Manual Implementation) =====
// This is a simple data model
class UserModel {
  String name;
  int age;

  UserModel({required this.name, required this.age});

  void updateName(String newName) {
    name = newName;
  }

  void updateAge(int newAge) {
    age = newAge;
  }
}

// ===== 3. InheritedWidget for Sharing Data =====
class UserProvider extends InheritedWidget {
  final UserModel user;
  final Function(String) onNameChanged;
  final Function(int) onAgeChanged;

  const UserProvider({
    required this.user,
    required this.onNameChanged,
    required this.onAgeChanged,
    required super.child,
    super.key,
  });

  static UserProvider of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<UserProvider>();
    assert(result != null, 'No UserProvider found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(UserProvider oldWidget) {
    return oldWidget.user != user;
  }
}

class StateManagementExample extends StatefulWidget {
  const StateManagementExample({super.key});

  @override
  State<StateManagementExample> createState() => _StateManagementExampleState();
}

class _StateManagementExampleState extends State<StateManagementExample> {
  late UserModel user;

  @override
  void initState() {
    super.initState();
    user = UserModel(name: 'John', age: 25);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('State Management Examples')),
      body: UserProvider(
        user: user,
        onNameChanged: (newName) {
          setState(() {
            user.updateName(newName);
          });
        },
        onAgeChanged: (newAge) {
          setState(() {
            user.updateAge(newAge);
          });
        },
        child: const UserInfoScreen(),
      ),
    );
  }
}

class UserInfoScreen extends StatelessWidget {
  const UserInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = UserProvider.of(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Name: ${userProvider.user.name}',
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 10),
          Text(
            'Age: ${userProvider.user.age}',
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              userProvider.onNameChanged('Alice');
            },
            child: const Text('Change Name'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              userProvider.onAgeChanged(30);
            },
            child: const Text('Change Age'),
          ),
        ],
      ),
    );
  }
}

// ===== 4. Bloc Pattern (Simplified) =====
enum TodoEvent { add, remove, toggle }

class Todo {
  final String id;
  final String title;
  bool isCompleted;

  Todo({
    required this.id,
    required this.title,
    this.isCompleted = false,
  });

  void toggle() {
    isCompleted = !isCompleted;
  }
}

class TodoBloc {
  final List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  void addTodo(String title) {
    _todos.add(Todo(
      id: DateTime.now().toString(),
      title: title,
    ));
  }

  void removeTodo(String id) {
    _todos.removeWhere((todo) => todo.id == id);
  }

  void toggleTodo(String id) {
    final index = _todos.indexWhere((todo) => todo.id == id);
    if (index != -1) {
      _todos[index].toggle();
    }
  }
}

// ===== 5. ChangeNotifier Pattern =====
class CounterNotifier extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }
}

class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  late CounterNotifier counter;

  @override
  void initState() {
    super.initState();
    counter = CounterNotifier();
  }

  @override
  void dispose() {
    counter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ChangeNotifier Pattern')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListenableBuilder(
              listenable: counter,
              builder: (context, child) {
                return Text(
                  'Count: ${counter.count}',
                  style: const TextStyle(fontSize: 24),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                counter.increment();
              },
              child: const Text('Increment'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                counter.decrement();
              },
              child: const Text('Decrement'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                counter.reset();
              },
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}

// ===== 6. ValueNotifier and ValueListenableBuilder =====
class ValueNotifierExample extends StatefulWidget {
  const ValueNotifierExample({super.key});

  @override
  State<ValueNotifierExample> createState() => _ValueNotifierExampleState();
}

class _ValueNotifierExampleState extends State<ValueNotifierExample> {
  late ValueNotifier<int> scoreNotifier;

  @override
  void initState() {
    super.initState();
    scoreNotifier = ValueNotifier<int>(0);
  }

  @override
  void dispose() {
    scoreNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ValueNotifier Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder<int>(
              valueListenable: scoreNotifier,
              builder: (context, value, child) {
                return Text(
                  'Score: $value',
                  style: const TextStyle(fontSize: 24),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                scoreNotifier.value += 10;
              },
              child: const Text('Add 10 Points'),
            ),
          ],
        ),
      ),
    );
  }
}
