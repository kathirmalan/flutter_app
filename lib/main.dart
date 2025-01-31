import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Home Screen')),
        body: Align(
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SecondScreen(
                          message: "hi from home page",
                        )),
              );

              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("$result")));
            },
            child: const Text('Launch Screen'),
          ),
        ));
  }
}

class SecondScreen extends StatelessWidget {
  final String message;

  const SecondScreen({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Second Screen')),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "hi from second page");
              },
              child: const Text('Go back with the data'),
            ),
          ],
        )));
  }
}
