import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //----------------------------- variable
  final Map<String, String> user_credential = {
    'user_name': 'admin',
    'user_password': '1234',
  };
  String user_name = '';
  String user_password = '';
  TextEditingController tcUser_name = TextEditingController();
  TextEditingController tcUser_password = TextEditingController();
  String Login_status = '';
  //----------------------------- method
  void credentialCheck() {
    setState(() {
      user_name = tcUser_name.text;
      user_password = tcUser_password.text;
      if (user_name != user_credential['user_name'] ||
          user_password != user_credential['user_password']) {
        Login_status = 'Wrong username or password';
      } else {
        Login_status = 'Welcome $user_name';
      }
    });
  }

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
              obscureText: true,
            ),
          ),
          ElevatedButton(
            onPressed: credentialCheck,
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            child: Text('Login', style: TextStyle(color: Colors.white)),
          ),

          SizedBox(height: 16),
          Text('$Login_status', style: TextStyle(color: Colors.red)),
        ],
      ),
    );
  }
}
