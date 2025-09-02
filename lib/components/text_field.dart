import 'package:flutter/material.dart';
import 'package:training/size.dart';

import '../buttons27_08_2025/btn.dart';

class EditText extends StatefulWidget {
  final TextEditingController? controller;
  const EditText({super.key, this.controller});

  @override
  State<EditText> createState() => _EditTextState();
}

class _EditTextState extends State<EditText> {
  bool isHide = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.v, horizontal: 10.h),
      child: TextFormField(
        obscureText: isHide,
        controller: widget.controller,

        decoration: InputDecoration(
          filled: true,
          border: InputBorder.none,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isHide = !isHide;
              });
            },
            icon:
                isHide
                    ? Icon(Icons.visibility_off_sharp)
                    : Icon(Icons.visibility),
          ),
        ),
      ),
    );
  }
}

//Screen A
class ScreenA extends StatefulWidget {
  const ScreenA({super.key});

  @override
  State<ScreenA> createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          EditText(),
          // CheckBox
          Checkbox(
            activeColor: Colors.red,
            value: isOn,
            onChanged: (value) {
              setState(() {
                isOn = value!;
              });
            },
          ),

          // Switch
          Switch(
            activeColor: Colors.blue,
            value: isOn,
            onChanged: (value) {
              setState(() {
                isOn = value;
              });
            },
          ),

          AppBtn(
            text: 'Next',
            isGradient: false,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ScreenB();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

//Screen B

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: Column(children: [
      
      Center(child: Text("Hello This is Screen B"),
      
      
      ),
      
      AppBtn(text: "Back",onTap: () {

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ScreenA();
            },
          ),
        );

      },)
    ]));
  }
}
