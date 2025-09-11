import 'package:flutter/material.dart';
import 'dart:math';

class Randomnumber extends StatefulWidget {
  const Randomnumber({super.key});

  @override
  State<Randomnumber> createState() => _RandomnumberState();
}

class _RandomnumberState extends State<Randomnumber> {
  TextEditingController tcMin = TextEditingController();
  TextEditingController tcMax = TextEditingController();
  String rannum = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text('Random integer number'),
              TextField(
                controller: tcMin,
                decoration: InputDecoration(hintText: 'min'),
              ),
              TextField(
                controller: tcMax,
                decoration: InputDecoration(hintText: 'max'),
              ),
              Text(rannum),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FilledButton(
                    onPressed: genarateRandom,
                    child: Text('Generate'),
                  ),
                  SizedBox(width: 20),
                  FilledButton(onPressed: Clear, child: Text('Clear')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  genarateRandom() {
    int? min = int.tryParse(tcMin.text);
    int? max = int.tryParse(tcMax.text);
    if (min == null || max == null || min > max) {
      rannum = 'Wrong input';
      debugPrint('wrong input');
      return;
    }
    int result = min + Random().nextInt(max - min + 1);
    setState(() {
      rannum = result.toString();
      debugPrint(result.toString());
    });
  }

  Clear() {
    tcMin.clear();
    tcMax.clear();
    setState(() {
      rannum = '';
    });
  }
}
