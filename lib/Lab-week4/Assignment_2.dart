import 'package:flutter/material.dart';
import 'dart:math';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  //-------------------------------- Variable
  int result = 0;
  String output = '';
  TextEditingController tcFirst_num = TextEditingController();
  TextEditingController tcSecond_num = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          //--------------- text field '2nd number'
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
            child: TextField(
              controller: tcFirst_num,
              decoration: InputDecoration(hintText: 'Number 1'),
            ),
          ),
          //--------------- text field '2nd number'
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
            child: TextField(
              controller: tcSecond_num,
              decoration: InputDecoration(hintText: 'Number 2'),
            ),
          ),
          //--------------- Summation
          ElevatedButton(
            onPressed: () => pattern(1),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 247, 173, 63),
            ),
            child: Text('Sum', style: TextStyle(color: Colors.white)),
          ),

          SizedBox(height: 16),
          //--------------- Power
          ElevatedButton(
            onPressed: () => pattern(2),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            child: Text('Power', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 16),
          //--------------- Clear
          ElevatedButton(
            onPressed: () => pattern(3),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: Text('Clear', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 16),
          Text('$output', style: TextStyle(color: Colors.red)),
        ],
      ),
    );
  }

  //------------------ pattern for all functioni
  void pattern(int selection) {
    setState(() {
      int? first_num = int.tryParse(tcFirst_num.text);
      int? second_num = int.tryParse(tcSecond_num.text);
      if (first_num != null && second_num != null) {
        switch (selection) {
          //-------------------------------  summation
          case 1:
            result = first_num + second_num;
            break;
          //-------------------------------  power
          case 2:
            result = pow(first_num, second_num).toInt();
            break;
          //-------------------------------  clear
          default:
        }
        output = 'Result = $result';
      } else {
        // Handle the case where one or both inputs are invalid (null).
        output = 'Please input only numbers';
      }
    });
  }

  //------------------ summation
  void summation() {}
}
