import 'package:flutter/material.dart';

class Singlechild extends StatelessWidget {
  const Singlechild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('My app'))
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(20), //external space
          padding: EdgeInsets.all(20), //internal space
          color: Colors.amber,
          width: 150,
          height: 150,
          alignment: Alignment.center,
          child: Text('Single child'),
        ),
      ), // for no overlab on status bar
    );
  }
}
