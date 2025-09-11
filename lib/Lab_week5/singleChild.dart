import 'package:flutter/material.dart';

class Singlechild extends StatelessWidget {
  const Singlechild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('My app'))
      // for no overlab on status bar
      body: SafeArea(
        child: Align(alignment: Alignment(0, 0), child: Text('Sigle Child')),
      ),
    );
  }
}
