import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final Map<String, dynamic> user_credential = {
    'user_name': 'admin',
    'user_password': '1234',
  };
  String user_name = '';
  String user_password = '';
  TextEditingController tcUser_name = TextEditingController();
  TextEditingController tcUser_password = TextEditingController();
  String Login_status = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
            child: TextField(
              controller: tcUser_name,
              decoration: InputDecoration(hintText: 'Username'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
            child: TextField(
              controller: tcUser_password,
              decoration: InputDecoration(hintText: 'Password'),
            ),
          ),
          ElevatedButton(onPressed: null, child: Text('Login')),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              'Lo $Login_status',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
