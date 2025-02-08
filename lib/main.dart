import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DialPadGroup(),
    theme: ThemeData(primarySwatch: Colors.blue),
  ));
}

class DialPadGroup extends StatefulWidget {
  const DialPadGroup({super.key});

  @override
  State<DialPadGroup> createState() => _DialPadGroupState();
}

class _DialPadGroupState extends State<DialPadGroup> {
  String dialedNumber = '';

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
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Spacer(),
                        Expanded(
                          flex: 10, // Controls the width of the TextField
                          child:  Text(
                            dialedNumber,
                            style: TextStyle(
                              fontSize: 30,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        Spacer(), // Balances the TextField in center
                      ],
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              dialedNumber = "${dialedNumber}1";
                            });
                          },
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(34),
                          ),
                          child: Text('1'),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              dialedNumber = "${dialedNumber}2";
                            });
                          },
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(34),
                          ),
                          child: Text('2'),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              dialedNumber = "${dialedNumber}3";
                            });
                          },
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(34),
                          ),
                          child: Text('3'),
                        ),
                      ]),
                  SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              dialedNumber = "${dialedNumber}4";
                            });
                          },
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(34),
                          ),
                          child: Text('4'),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              dialedNumber = "${dialedNumber}5";
                            });
                          },
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(34),
                          ),
                          child: Text('5'),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              dialedNumber = "${dialedNumber}6";
                            });
                          },
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(34),
                          ),
                          child: Text('6'),
                        ),
                      ]),
                  SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              dialedNumber = "${dialedNumber}7";
                            });
                          },
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(34),
                          ),
                          child: Text('7'),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              dialedNumber = "${dialedNumber}8";
                            });
                          },
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(34),
                          ),
                          child: Text('8'),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              dialedNumber = "${dialedNumber}9";
                            });
                          },
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(34),
                          ),
                          child: Text('9'),
                        ),
                      ]),
                  SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              dialedNumber = "$dialedNumber+";
                            });
                          },
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(34),
                          ),
                          child: Text('+'),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              dialedNumber = "${dialedNumber}0";
                            });
                          },
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(34),
                          ),
                          child: Text('0'),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              dialedNumber = "$dialedNumber#";
                            });
                          },
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(34),
                          ),
                          child: Text('#'),
                        ),
                      ]),
                  SizedBox(height: 15),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Spacer(),
                        FilledButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.blue.shade900,
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(34),
                          ),
                          child: Icon(Icons.call),
                        ),
                        Spacer(), // Balances the TextField in center
                        Icon(Icons.search),

                      ]),


                ],
              ))),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.offline_bolt),
            label: 'Screen 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.panorama_fish_eye),
            label: 'Screen 3',
          ),
        ],
      ),
    );
  }
}

class IBSoftPhone extends StatelessWidget {
  const IBSoftPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DialPad(),
      theme: ThemeData(primarySwatch: Colors.blue),
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
              margin: const EdgeInsets.fromLTRB(0, 90, 0, 0),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(34),
                          ),
                          child: Text('1'),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(34),
                          ),
                          child: Text('2'),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(34),
                          ),
                          child: Text('3'),
                        ),
                      ]),
                  SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(34),
                          ),
                          child: Text('4'),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(34),
                          ),
                          child: Text('5'),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(34),
                          ),
                          child: Text('6'),
                        ),
                      ]),
                  SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(34),
                          ),
                          child: Text('7'),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(34),
                          ),
                          child: Text('8'),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(34),
                          ),
                          child: Text('9'),
                        ),
                      ]),
                  SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(34),
                          ),
                          child: Text('+'),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(34),
                          ),
                          child: Text('0'),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(34),
                          ),
                          child: Text('#'),
                        ),
                      ]),
                  SizedBox(height: 15),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FilledButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.blue.shade900,
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(34),
                          ),
                          child: Icon(Icons.call),
                        )
                      ]),
                ],
              ))),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.offline_bolt),
            label: 'Screen 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.panorama_fish_eye),
            label: 'Screen 3',
          ),
        ],
      ),
    );
  }
}
