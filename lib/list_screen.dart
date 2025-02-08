import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DynamicListScreen(),
    );
  }
}

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Simple ListView")),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        children: const [
          ListTile(
            leading: Icon(Icons.person),
            title: Text("John Doe"),
            subtitle: Text("Software Engineer"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Jane Smith"),
            subtitle: Text("Product Manager"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Alice Brown"),
            subtitle: Text("UI/UX Designer"),
          ),
        ],
      ),
    );
  }
}

class DynamicListScreen extends StatelessWidget {
  final List<String> names = [
    "John",
    "Jane",
    "Alice",
    "Bob",
    "Charlie",
    "kathir",
    "Kayal"
  ];

  DynamicListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dynamic ListView")),
      body: ListView.builder(
        itemCount: names.length, // ✅ Number of items
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text(names[index][0])),
            title: Text(names[index]),
            subtitle: const Text("Tap to see details",
                style: TextStyle(color: Colors.grey)),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("You tapped: ${names[index]}")),
              );
            },
          );
        },
      ),
    );
  }
}