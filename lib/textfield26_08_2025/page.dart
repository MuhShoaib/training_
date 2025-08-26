import 'dart:developer';

import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isObscure = false;

  String emailText = "";

  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Email"),
            SizedBox(height: 10),

            // Row(
            //   children: [
            //     Expanded(
            //       child: TextField(
            //         keyboardType: TextInputType.phone,
            //         style: TextStyle(color: Colors.red),
            //         decoration: InputDecoration(
            //           label: Text("Email"),
            //           hintText: "Enter Email",
            //           hintStyle: TextStyle(color: Colors.black),
            //           filled: true,
            //           fillColor: Colors.grey.shade100,
            //           enabledBorder: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(5),
            //             borderSide: BorderSide(color: Colors.blue),
            //           ),
            //           focusedBorder: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(5),
            //             borderSide: BorderSide(color: Colors.red),
            //           ),
            //           border: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(5),
            //             borderSide: BorderSide(color: Colors.black),
            //           ),
            //         ),
            //       ),
            //     ),
            //     SizedBox(width: 20),
            //     Expanded(
            //       child: TextField(
            //         keyboardType: TextInputType.phone,
            //         style: TextStyle(color: Colors.red),
            //         decoration: InputDecoration(
            //           label: Text("Email"),
            //           hintText: "Enter Email",
            //           hintStyle: TextStyle(color: Colors.black),
            //           filled: true,
            //           fillColor: Colors.grey.shade100,
            //           enabledBorder: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(5),
            //             borderSide: BorderSide(color: Colors.blue),
            //           ),
            //           focusedBorder: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(5),
            //             borderSide: BorderSide(color: Colors.red),
            //           ),
            //           border: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(5),
            //             borderSide: BorderSide(color: Colors.black),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            TextField(
              controller: email,

              onChanged: (value) {
                // log(value);
                setState(() {
                  emailText = value;
                });
              },
              keyboardType: TextInputType.phone,
              obscureText: isObscure,
              style: TextStyle(color: Colors.red),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      emailText = email.text;
                    });
                    //
                    // if(isObscure==true){
                    //
                    //   isObscure=false;
                    //
                    //
                    // }else{
                    //   isObscure=true;
                    //
                    // }

                    setState(() {
                      isObscure = !isObscure;
                    });

                    log(isObscure.toString());
                  },
                  icon:
                      isObscure
                          ? Icon(Icons.visibility_off, color: Colors.blue)
                          : Icon(Icons.remove_red_eye),
                ),
                // label: Text("Email"),
                hintText: "Enter Email",
                hintStyle: TextStyle(color: Colors.black),
                filled: true,
                fillColor: Colors.grey.shade100,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.blue),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.red),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),

            ElevatedButton(onPressed: () {}, child: Text("Login"),style: ButtonStyle(),),
            MaterialButton(onPressed: () {}, child: Text("Login"),color:Colors.red,),
            TextButton(onPressed: () {}, child: Text("Login")),
            OutlinedButton(onPressed: () {}, child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
