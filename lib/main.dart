import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My first App')),
        body: Text('Hello V'),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Text('X'),
        ),
      )
    ));
}
