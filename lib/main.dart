import 'package:flutter/material.dart';

void main() {
  runApp(const IBSoftPhone());
}

class IBSoftPhone extends StatelessWidget {
  const IBSoftPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DialPad(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class DialPad extends StatelessWidget {
  const DialPad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text(
          "iBrowse Soft phone",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
          child: Container(
              padding: const EdgeInsets.fromLTRB(4.0, 34.0, 4.0, 4.0),
              margin: const EdgeInsets.fromLTRB(0, 180, 0, 0),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FilledButton(
                            onPressed: () {},
                            child: const Text('1')),
                        FilledButton(onPressed: () {}, child: const Text('2')),
                        FilledButton(onPressed: () {}, child: const Text('3')),
                      ]
                  ),
                  SizedBox(height: 40),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FilledButton(onPressed: () {}, child: const Text('4')),
                        FilledButton(onPressed: () {}, child: const Text('5')),
                        FilledButton(onPressed: () {}, child: const Text('6')),
                      ]
                  ),
                  SizedBox(height: 40),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FilledButton(onPressed: () {}, child: const Text('7')),
                        FilledButton(onPressed: () {}, child: const Text('8')),
                        FilledButton(onPressed: () {}, child: const Text('9')),
                      ]
                  ),
                  SizedBox(height: 40),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FilledButton(onPressed: () {}, child: const Text('*')),
                        FilledButton(onPressed: () {}, child: const Text('0')),
                        FilledButton(onPressed: () {}, child: const Text('#')),
                      ]
                  )
                ],
              ))),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade900,
        onPressed: () {
          print("pressed");
        },
        child: Text(
          "Call",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
