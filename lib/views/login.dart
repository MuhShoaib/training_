import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text(
      //     "My First App",
      //     style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      //   ),
      //   backgroundColor: Colors.blue,
      // ),
      body: Center(
        child: Text(
          "Hello World",
          style: TextStyle(


            backgroundColor: Colors.pink,
            color: Colors.yellow,
            fontWeight: FontWeight.w600,
            fontSize: 30,
            letterSpacing: 10,
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
