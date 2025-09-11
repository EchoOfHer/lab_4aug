import 'package:flutter/material.dart';

class Design2 extends StatelessWidget {
  const Design2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My profile', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey[800],
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.blue,
                backgroundImage: NetworkImage(
                  'https://i.imgflip.com/r5vx2.jpg?a488088',
                ),
              ),
            ),
            Divider(color: Colors.grey, height: 60),
            Text('Name', style: TextStyle(color: Colors.grey[300])),
            Text(
              'Jhon Doe',
              style: TextStyle(color: Colors.yellow, fontSize: 22),
            ),
            SizedBox(height: 16),
            Text('Age', style: TextStyle(color: Colors.grey[300])),
            Text('22', style: TextStyle(color: Colors.yellow, fontSize: 22)),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.email, color: Colors.grey[300]),
                SizedBox(width: 8),
                Text(
                  'JhonD@gmail.com',
                  style: TextStyle(color: Colors.grey[300]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
