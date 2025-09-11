import 'package:flutter/material.dart';

class Example1 extends StatelessWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(color: Colors.red, width: 100),
          Expanded(
            child: Container(
              color: Colors.teal,
              width: 100,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(color: Colors.yellow, width: 100, height: 100),
                  Container(color: Colors.green, width: 100, height: 100),
                ],
              ),
            ),
          ),
          Container(color: Colors.blue, width: 100),
        ],
      ),
    );
  }
}
