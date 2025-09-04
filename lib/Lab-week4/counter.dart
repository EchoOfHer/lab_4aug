import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  //state variable
  String message = 'Hello';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter App')),
      body: Text(message),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //annonymous function for short code
          // print('button pressed'); // like console.log
          //debugPrint(message);
          setState(() {
            if (message == 'Hello') {
              message = 'Hi';
            } else {
              message = 'Hello';
            }
          });
        },
        child: Text('Count'),
      ),
    );
  }
}
