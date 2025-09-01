import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:training/size.dart';

class ButtonsView extends StatelessWidget {
  const ButtonsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("Hello World", style: TextStyle(fontSize: 20.fSize)),
          AppBtn(text: 'Login', isGradient: true),
          Gap.v(20),
          AppBtn(text: 'Register', isGradient: true),
        ],
      ),
    );
  }
}

class AppBtn extends StatelessWidget {
  final String text;
  final bool? isGradient;
  const AppBtn({super.key, required this.text, this.isGradient = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      height: 60.v,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        gradient:
            isGradient == true
                ? LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xFF0DCCC9), Color(0xFF097E93)],
                )
                : null,

        boxShadow: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),

      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        child: InkWell(
          borderRadius: BorderRadius.circular(30),
          splashColor: Colors.white.withOpacity(0.2),
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.fSize,
                  fontFamily: "Poppins",
                ),
              ),
            ),
          ),
        ),
      ),

      // child: Center(
      //   child: Text(
      //     "Login",
      //     style: TextStyle(color: Colors.black, fontSize: 18.fSize),
      //   ),
      // ),
    );
  }
}
