import 'package:flutter/material.dart';
import 'package:training/views/home.dart';
import 'package:training/views/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home(), debugShowCheckedModeBanner: false);
  }
}



