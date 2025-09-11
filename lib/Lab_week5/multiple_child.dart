import 'package:flutter/material.dart';

class MultipleChild extends StatelessWidget {
  const MultipleChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          // children: [
          //   Container(color: Colors.green, width: 100, height: 100),
          //   //custom alignment
          //   Spacer(flex: 1),
          //   Container(color: Colors.yellow, width: 100, height: 150),
          //   Spacer(flex: 2),
          //   Container(color: Colors.red, width: 100, height: 100),
          // ],
          children: [
            //fit to remaing spcace
            Expanded(
              flex: 1,
              child: Container(color: Colors.green, width: 100, height: 100),
            ),
            Container(color: Colors.yellow, width: 100, height: 150),

            Expanded(
              flex: 2,
              child: Container(color: Colors.red, width: 100, height: 100),
            ),
          ],
        ),
      ),
    );
  }
}
