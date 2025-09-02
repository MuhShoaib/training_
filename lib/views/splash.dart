import 'dart:async';

import 'package:flutter/material.dart';
import 'package:training/components/text_field.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ScreenA()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("First App",style: TextStyle(color: Colors.black,fontSize: 35),),
            CircularProgressIndicator()
          ],
        ),
        // child: Image.network(
        //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVy89NU_Ee3Z35KFWLoS8Fsl4Yb1p3A2UEsw&s",
        // ),
      ),
    );
  }
}
