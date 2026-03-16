import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const AsyncConceptsApp());
}

class AsyncConceptsApp extends StatelessWidget {
  const AsyncConceptsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Async/Await & Streams',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const AsyncExamplesPage(),
    );
  }
}

// ===== 1. FUTURES & ASYNC/AWAIT =====
class AsyncService {
  // Simulating an API call
  Future<String> fetchData() async {
    await Future.delayed(const Duration(seconds: 2));
    return 'Data fetched successfully!';
  }

  // With error handling
  Future<String> fetchDataWithError() async {
    await Future.delayed(const Duration(seconds: 1));
    throw Exception('Failed to fetch data');
  }

  // Multiple async operations
  Future<void> performMultipleOperations() async {
    try {
      final data1 = await fetchData();
      print(data1);
      final data2 = await fetchData();
      print(data2);
    } catch (e) {
      print('Error: $e');
    }
  }
}

// ===== 2. FUTURES IN FLUTTER =====
class FutureExample extends StatefulWidget {
  const FutureExample({super.key});

  @override
  State<FutureExample> createState() => _FutureExampleState();
}

class _FutureExampleState extends State<FutureExample> {
  final AsyncService service = AsyncService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Future Example')),
      body: Center(
        child: FutureBuilder<String>(
          future: service.fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              return Text(
                snapshot.data ?? 'No data',
                style: const TextStyle(fontSize: 18),
              );
            } else {
              return const Text('No data available');
            }
          },
        ),
      ),
    );
  }
}

// ===== 3. STREAMS =====
class StreamService {
  // Simple stream
  Stream<int> countStream() async* {
    for (int i = 1; i <= 5; i++) {
      await Future.delayed(const Duration(seconds: 1));
      yield i;
    }
  }

  // Stream from periodic timer
  Stream<DateTime> timeStream() {
    return Stream.periodic(
      const Duration(seconds: 1),
      (_) => DateTime.now(),
    );
  }

  // Stream with error handling
  Stream<int> countStreamWithError() async* {
    for (int i = 1; i <= 5; i++) {
      if (i == 3) {
        yield* Stream.error(Exception('Error at count 3'));
      } else {
        await Future.delayed(const Duration(seconds: 1));
        yield i;
      }
    }
  }

  // Stream transformation
  Stream<String> transformedStream() {
    return countStream().map((number) => 'Count: $number');
  }
}

// ===== 4. STREAM WIDGET =====
class StreamExample extends StatefulWidget {
  const StreamExample({super.key});

  @override
  State<StreamExample> createState() => _StreamExampleState();
}

class _StreamExampleState extends State<StreamExample> {
  final StreamService service = StreamService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stream Example')),
      body: Center(
        child: StreamBuilder<int>(
          stream: service.countStream(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              return Text(
                'Count: ${snapshot.data}',
                style: const TextStyle(fontSize: 24),
              );
            } else {
              return const Text('No data');
            }
          },
        ),
      ),
    );
  }
}

// ===== 5. STREAM CONTROLLER =====
class CounterStreamController {
  final StreamController<int> _controller = StreamController<int>();

  Stream<int> get countStream => _controller.stream;

  int _count = 0;

  void increment() {
    _count++;
    _controller.sink.add(_count);
  }

  void reset() {
    _count = 0;
    _controller.sink.add(_count);
  }

  void dispose() {
    _controller.close();
  }
}

class StreamControllerExample extends StatefulWidget {
  const StreamControllerExample({super.key});

  @override
  State<StreamControllerExample> createState() =>
      _StreamControllerExampleState();
}

class _StreamControllerExampleState extends State<StreamControllerExample> {
  late CounterStreamController controller;

  @override
  void initState() {
    super.initState();
    controller = CounterStreamController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StreamController Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<int>(
              stream: controller.countStream,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(
                    'Count: ${snapshot.data}',
                    style: const TextStyle(fontSize: 24),
                  );
                } else {
                  return const Text('0');
                }
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.increment,
              child: const Text('Increment'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: controller.reset,
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}

// ===== 6. STREAM OPERATIONS =====
class StreamOperationsExample extends StatefulWidget {
  const StreamOperationsExample({super.key});

  @override
  State<StreamOperationsExample> createState() =>
      _StreamOperationsExampleState();
}

class _StreamOperationsExampleState extends State<StreamOperationsExample> {
  final StreamService service = StreamService();

  Stream<String> get transformedStream => service.transformedStream();

  // Filter stream (only even numbers)
  Stream<int> get filteredStream =>
      service.countStream().where((number) => number.isEven);

  // Map stream
  Stream<String> get mappedStream =>
      service.countStream().map((number) => 'Number: $number');

  // Take only first 3 items
  Stream<int> get limitedStream => service.countStream().take(3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stream Operations')),
      body: ListView(
        children: [
          // Transformed stream
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Transformed Stream:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                StreamBuilder<String>(
                  stream: transformedStream,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Text(snapshot.data ?? '');
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ],
            ),
          ),

          // Filtered stream
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Filtered Stream (Even only):',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                StreamBuilder<int>(
                  stream: filteredStream,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Text('Even: ${snapshot.data}');
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ],
            ),
          ),

          // Mapped stream
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Mapped Stream:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                StreamBuilder<String>(
                  stream: mappedStream,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Text(snapshot.data ?? '');
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ],
            ),
          ),

          // Limited stream
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Limited Stream (First 3):',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                StreamBuilder<int>(
                  stream: limitedStream,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Text('Limited: ${snapshot.data}');
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ===== MAIN PAGE WITH NAVIGATION =====
class AsyncExamplesPage extends StatelessWidget {
  const AsyncExamplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Async/Await & Streams')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Future Example'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FutureExample()),
              );
            },
          ),
          ListTile(
            title: const Text('Stream Example'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const StreamExample()),
              );
            },
          ),
          ListTile(
            title: const Text('StreamController Example'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const StreamControllerExample()),
              );
            },
          ),
          ListTile(
            title: const Text('Stream Operations'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const StreamOperationsExample()),
              );
            },
          ),
        ],
      ),
    );
  }
}
