import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  //-------------------------------- Variable
  String first_num = '';
  String second_num = '';
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
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 247, 173, 63),
            ),
            child: Text('Sum', style: TextStyle(color: Colors.white)),
          ),

          SizedBox(height: 16),
          //--------------- Power
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            child: Text('Power', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 16),
          //--------------- Clear
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: Text('Clear', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 16),
          Text('l$output', style: TextStyle(color: Colors.red)),
        ],
      ),
    );
  }
}
