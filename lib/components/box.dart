import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final Color? color;
  final String text;
  final double? height;

  const Box({super.key, this.color, required this.text, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 100,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: color ?? Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(child: Text(text, style: TextStyle(color: Colors.white))),
    );
  }
}

Widget box({required Color color, required String text, double height=100}) {
  return Container(
    height: height ?? 100,
    width: double.infinity,
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    decoration: BoxDecoration(
      color: color ?? Colors.blue,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Center(child: Text(text, style: TextStyle(color: Colors.white))),
  );
}
