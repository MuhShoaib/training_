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
              // ScaffoldMessenger.of(
              //   context,
              // ).showSnackBar(SnackBar(content: Text("Button is Clicked"),
              //   showCloseIcon: true,
              //
              //   backgroundColor: Colors.green,
              //   behavior: SnackBarBehavior.floating,
              // ));

              // ScaffoldMessenger.of(context).showSnackBar(
              //   SnackBar(
              //     duration: Duration(milliseconds: 500),
              //     content: Text("Button is Clicked"),
              //     showCloseIcon: true,
              //     backgroundColor: Colors.green,
              //     behavior: SnackBarBehavior.floating,
              //   ),
              // );

              // showDialog(
              //   context: context,
              //   builder: (context) {
              //     // return AlertDialog(
              //     //   title: Row(
              //     //     children: [
              //     //       Text("Next Screen", style: TextStyle(fontSize: 15)),
              //     //       Spacer(),
              //     //       IconButton(onPressed: () {
              //     //
              //     //
              //     //         Navigator.pop(context);
              //     //       }, icon: Icon(Icons.close))
              //     //     ],
              //     //   ),
              //     //   content: Text("Do you want to move to Next Screen?"),
              //     //   actions: [
              //     //     ElevatedButton(onPressed: () {
              //     //
              //     //       Navigator.push(
              //     //         context,
              //     //         MaterialPageRoute(
              //     //           builder: (context) {
              //     //             return ScreenB();
              //     //           },
              //     //         ),
              //     //       );
              //     //     }, child: Text("Yes")),
              //     //     ElevatedButton(onPressed: () {
              //     //
              //     //       Navigator.pop(context);
              //     //     }, child: Text("No")),
              //     //   ],
              //     // );
              //
              //     return Dialog(
              //
              //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              //
              //       child: Padding(
              //         padding:  EdgeInsets.symmetric(horizontal: 10.h,vertical: 10.v),
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           mainAxisSize: MainAxisSize.min,
              //           children: [
              //             Text("Exit App"),
              //             Text("Do you want to Exit?"),
              //
              //             Row(
              //               children: [
              //                 Expanded(child: AppBtn(text: 'Yes',isGradient: true,)),
              //                 Expanded(child: AppBtn(text: 'No',isGradient: true,)),
              //               ],
              //             )
              //
              //
              //           ],
              //         ),
              //       ),
              //     );
              //   },
              // );
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return ScreenB();
              //     },
              //   ),
              // );
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
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(child: Text("Hello This is Screen B")),

          AppBtn(
            text: "Back",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ScreenA();
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
