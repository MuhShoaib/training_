import 'package:flutter/material.dart';

import '../components/box.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [

          Box(text: 'Hello',),
          Box( text: 'Iqra',height: 50,color: Colors.red,),
          Box(color: Colors.orange, text: 'Collage',),




        ],
      ),
    );
  }
}
