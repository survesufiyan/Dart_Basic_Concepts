import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterConceptsApp());
}

class FlutterConceptsApp extends StatelessWidget {
  const FlutterConceptsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Concepts',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ConceptsHomePage(),
    );
  }
}

class ConceptsHomePage extends StatefulWidget {
  const ConceptsHomePage({super.key});

  @override
  State<ConceptsHomePage> createState() => _ConceptsHomePageState();
}

class _ConceptsHomePageState extends State<ConceptsHomePage> {
  int counter = 0;
  bool switchValue = false;
  String selectedValue = 'Option 1';
  TextEditingController textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Concepts'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. TEXT WIDGET
              const Text(
                '1. Text Widget',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'This is a simple text widget',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 20),

              // 2. BUTTON WIDGETS
              const Text(
                '2. Button Widgets',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                    child: const Text('Elevated Button'),
                  ),
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Text Button Pressed')),
                    ),
                    child: const Text('Text Button'),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // 3. INPUT WIDGETS
              const Text(
                '3. Input Widgets',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: textController,
                decoration: InputDecoration(
                  hintText: 'Enter text',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Checkbox(
                    value: switchValue,
                    onChanged: (value) {
                      setState(() {
                        switchValue = value ?? false;
                      });
                    },
                  ),
                  const Text('Checkbox'),
                  const SizedBox(width: 20),
                  Switch(
                    value: switchValue,
                    onChanged: (value) {
                      setState(() {
                        switchValue = value;
                      });
                    },
                  ),
                  const Text('Switch'),
                ],
              ),
              const SizedBox(height: 20),

              // 4. LAYOUT WIDGETS
              const Text(
                '4. Layout Widgets',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              // Row
              const Text('Row:'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    color: Colors.red,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    color: Colors.green,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    color: Colors.blue,
                  ),
                ],
              ),
              const SizedBox(height: 15),

              // Column
              const Text('Column:'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Item 1'),
                  const Text('Item 2'),
                  const Text('Item 3'),
                ],
              ),
              const SizedBox(height: 20),

              // 5. CONTAINER WIDGET
              const Text(
                '5. Container Widget',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  border: Border.all(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Container with decoration',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // 6. STATE MANAGEMENT
              const Text(
                '6. State Management (setState)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                'Counter: $counter',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),

              // 7. LIST VIEW
              const Text(
                '7. ListView',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(Icons.list),
                      title: Text('Item ${index + 1}'),
                      trailing: const Icon(Icons.arrow_forward),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),

              // 8. GRIDVIEW
              const Text(
                '8. GridView',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 150,
                child: GridView.count(
                  crossAxisCount: 3,
                  children: List.generate(
                    6,
                    (index) => Container(
                      margin: const EdgeInsets.all(8),
                      color: Colors.primaries[index % Colors.primaries.length],
                      child: Center(
                        child: Text('${index + 1}'),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // 9. CARD WIDGET
              const Text(
                '9. Card Widget',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Card Title',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'This is card content. Cards are useful for grouping related information.',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // 10. NAVIGATION EXAMPLE
              const Text(
                '10. Navigation',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SecondPage(),
                    ),
                  );
                },
                child: const Text('Go to Second Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Second Page for Navigation Example
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to Second Page!',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
