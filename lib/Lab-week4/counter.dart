import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  //state variable
  int count = 0;
  //methods
  void updatecount() {
    setState(() {
      count++;
    });
  }

  //ui
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Text(
          'Count = $count',
          style: TextStyle(fontSize: 26, color: Colors.indigo),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //annonymous function for short code
          // print('button pressed'); // like console.log
          //debugPrint(message);
          updatecount();
        },
        backgroundColor: Colors.indigo,
        child: Text('Count', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
