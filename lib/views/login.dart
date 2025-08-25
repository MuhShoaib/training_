import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      floatingActionButton: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My First App",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.blue,
      ),

      // body: Center(
      //   child: Text(
      //     "Hello World",
      //     style: TextStyle(
      //       backgroundColor: Colors.pink,
      //       color: Colors.yellow,
      //       fontWeight: FontWeight.w600,
      //       fontSize: 30,
      //       letterSpacing: 10,
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Center(
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     SizedBox(height: 10),
          //
          //     Text("Hello"),
          //     Text("Hello"),
          //     Text("Hello"),
          //     Text("Hello"),
          //     Text("Hello"),
          //     // Container(
          //     //   margin: EdgeInsets.symmetric(horizontal: 20),
          //     //   // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          //     //   height: height * 0.25,
          //     //   width: width,
          //     //   decoration: BoxDecoration(
          //     //     // shape: BoxShape.circle,
          //     //     boxShadow: [
          //     //       BoxShadow(
          //     //         color: Colors.black.withOpacity(0.4),
          //     //         blurRadius: 6,
          //     //       ),
          //     //     ],
          //     //     gradient: LinearGradient(
          //     //       begin: Alignment.topLeft,
          //     //       end: Alignment.bottomRight,
          //     //       stops: [0.1, 1, 1.5],
          //     //       colors: [Colors.red, Colors.pink, Colors.yellow],
          //     //     ),
          //     //
          //     //     borderRadius: BorderRadius.circular(10),
          //     //     // border: Border.all(color: Colors.black, width: 1),
          //     //     // borderRadius: BorderRadius.only(
          //     //     //   bottomLeft: Radius.circular(20),
          //     //     //   topRight: Radius.circular(20),
          //     //     // ),
          //     //     color: Colors.red,
          //     //   ),
          //     //
          //     //   child: Center(child: Text("Iqra College")),
          //     // ),
          //     //
          //     // SizedBox(height: 10),
          //     // Container(
          //     //   margin: EdgeInsets.symmetric(horizontal: 20),
          //     //   // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          //     //   height: height * 0.25,
          //     //   width: width,
          //     //   decoration: BoxDecoration(
          //     //     // shape: BoxShape.circle,
          //     //     boxShadow: [
          //     //       BoxShadow(
          //     //         color: Colors.black.withOpacity(0.4),
          //     //         blurRadius: 6,
          //     //       ),
          //     //     ],
          //     //     gradient: LinearGradient(
          //     //       begin: Alignment.topLeft,
          //     //       end: Alignment.bottomRight,
          //     //       stops: [0.1, 1, 1.5],
          //     //       colors: [Colors.red, Colors.pink, Colors.yellow],
          //     //     ),
          //     //
          //     //     borderRadius: BorderRadius.circular(10),
          //     //     // border: Border.all(color: Colors.black, width: 1),
          //     //     // borderRadius: BorderRadius.only(
          //     //     //   bottomLeft: Radius.circular(20),
          //     //     //   topRight: Radius.circular(20),
          //     //     // ),
          //     //     color: Colors.red,
          //     //   ),
          //     //
          //     //   child: Center(child: Text("Iqra College")),
          //     // ),
          //     //
          //     // SizedBox(height: 10),
          //     // Container(
          //     //   margin: EdgeInsets.symmetric(horizontal: 20),
          //     //   // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          //     //   height: height * 0.25,
          //     //   width: width,
          //     //   decoration: BoxDecoration(
          //     //     // shape: BoxShape.circle,
          //     //     boxShadow: [
          //     //       BoxShadow(
          //     //         color: Colors.black.withOpacity(0.4),
          //     //         blurRadius: 6,
          //     //       ),
          //     //     ],
          //     //     gradient: LinearGradient(
          //     //       begin: Alignment.topLeft,
          //     //       end: Alignment.bottomRight,
          //     //       stops: [0.1, 1, 1.5],
          //     //       colors: [Colors.red, Colors.pink, Colors.yellow],
          //     //     ),
          //     //
          //     //     borderRadius: BorderRadius.circular(10),
          //     //     // border: Border.all(color: Colors.black, width: 1),
          //     //     // borderRadius: BorderRadius.only(
          //     //     //   bottomLeft: Radius.circular(20),
          //     //     //   topRight: Radius.circular(20),
          //     //     // ),
          //     //     color: Colors.red,
          //     //   ),
          //     //
          //     //   child: Center(child: Text("Iqra College")),
          //     // ),
          //   ],
          // ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Hello"),
              // Spacer(),
              Text("Hello"),
            ],
          ),
        ),
      ),
      // body: Container(
      //   margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      //   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      //   height: height * 0.25,
      //   width: width,
      //
      //   decoration: BoxDecoration(
      //     // shape: BoxShape.circle,
      //     boxShadow: [
      //       BoxShadow(color: Colors.black.withOpacity(0.4), blurRadius: 6),
      //     ],
      //     gradient: LinearGradient(
      //       begin: Alignment.topLeft,
      //       end: Alignment.bottomRight,
      //       stops: [0.1, 1, 1.5],
      //       colors: [Colors.orange, Colors.blue, Colors.yellow],
      //     ),
      //
      //     borderRadius: BorderRadius.circular(10),
      //     // border: Border.all(color: Colors.black, width: 1),
      //     // borderRadius: BorderRadius.only(
      //     //   bottomLeft: Radius.circular(20),
      //     //   topRight: Radius.circular(20),
      //     // ),
      //     color: Colors.red,
      //   ),
      //
      //   child: Container(
      //     // margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      //     // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      //     // height: height*0.25,
      //     // width: width,
      //     decoration: BoxDecoration(
      //       // shape: BoxShape.circle,
      //       boxShadow: [
      //         BoxShadow(color: Colors.black.withOpacity(0.4), blurRadius: 6),
      //       ],
      //       gradient: LinearGradient(
      //         begin: Alignment.topLeft,
      //         end: Alignment.bottomRight,
      //         stops: [0.1, 1, 1.5],
      //         colors: [Colors.red, Colors.pink, Colors.yellow],
      //       ),
      //
      //       borderRadius: BorderRadius.circular(10),
      //       // border: Border.all(color: Colors.black, width: 1),
      //       // borderRadius: BorderRadius.only(
      //       //   bottomLeft: Radius.circular(20),
      //       //   topRight: Radius.circular(20),
      //       // ),
      //       color: Colors.red,
      //     ),
      //
      //     child: Center(child: Text("Iqra College")),
      //   ),
      // ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}

// class Home extends StatelessWidget {
//   const Home({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       appBar: AppBar(),
//
//
//       // body: Column(
//       //   crossAxisAlignment: CrossAxisAlignment.start,
//       //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       //
//       //   // children: [
//       //   //   Text("Iqra Collage"),
//       //   //   Text("Iqra Collage"),
//       //   //   Text("Iqra Collage"),
//       //   //   // Expanded(child: Text("Iqra Collage")),
//       //   //   // Expanded(child: Text("Iqra Collage")),
//       //   //   // Expanded(child: Text("Iqra Collage")),
//       //   //   // Expanded(child: Text("Iqra Collage")),
//       //   //   Container(
//       //   //     margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//       //   //     // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
//       //   //     height: height * 0.25,
//       //   //     width: width,
//       //   //     decoration: BoxDecoration(
//       //   //       // shape: BoxShape.circle,
//       //   //       boxShadow: [
//       //   //         BoxShadow(
//       //   //           color: Colors.black.withOpacity(0.4),
//       //   //           blurRadius: 6,
//       //   //         ),
//       //   //       ],
//       //   //       gradient: LinearGradient(
//       //   //         begin: Alignment.topLeft,
//       //   //         end: Alignment.bottomRight,
//       //   //         stops: [0.1, 1, 1.5],
//       //   //         colors: [Colors.red, Colors.pink, Colors.yellow],
//       //   //       ),
//       //   //
//       //   //       borderRadius: BorderRadius.circular(10),
//       //   //       // border: Border.all(color: Colors.black, width: 1),
//       //   //       // borderRadius: BorderRadius.only(
//       //   //       //   bottomLeft: Radius.circular(20),
//       //   //       //   topRight: Radius.circular(20),
//       //   //       // ),
//       //   //       color: Colors.red,
//       //   //     ),
//       //   //   ),
//       //   //   Container(
//       //   //     margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//       //   //     // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
//       //   //     height: height * 0.25,
//       //   //     width: width,
//       //   //     decoration: BoxDecoration(
//       //   //       // shape: BoxShape.circle,
//       //   //       boxShadow: [
//       //   //         BoxShadow(
//       //   //           color: Colors.black.withOpacity(0.4),
//       //   //           blurRadius: 6,
//       //   //         ),
//       //   //       ],
//       //   //       gradient: LinearGradient(
//       //   //         begin: Alignment.topLeft,
//       //   //         end: Alignment.bottomRight,
//       //   //         stops: [0.1, 1, 1.5],
//       //   //         colors: [Colors.red, Colors.pink, Colors.yellow],
//       //   //       ),
//       //   //
//       //   //       borderRadius: BorderRadius.circular(10),
//       //   //       // border: Border.all(color: Colors.black, width: 1),
//       //   //       // borderRadius: BorderRadius.only(
//       //   //       //   bottomLeft: Radius.circular(20),
//       //   //       //   topRight: Radius.circular(20),
//       //   //       // ),
//       //   //       color: Colors.red,
//       //   //     ),
//       //   //   ),
//       //   //
//       //   //   Container(
//       //   //     margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//       //   //     // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
//       //   //     height: height * 0.25,
//       //   //     width: width,
//       //   //     decoration: BoxDecoration(
//       //   //       // shape: BoxShape.circle,
//       //   //       boxShadow: [
//       //   //         BoxShadow(
//       //   //           color: Colors.black.withOpacity(0.4),
//       //   //           blurRadius: 6,
//       //   //         ),
//       //   //       ],
//       //   //       gradient: LinearGradient(
//       //   //         begin: Alignment.topLeft,
//       //   //         end: Alignment.bottomRight,
//       //   //         stops: [0.1, 1, 1.5],
//       //   //         colors: [Colors.red, Colors.pink, Colors.yellow],
//       //   //       ),
//       //   //
//       //   //       borderRadius: BorderRadius.circular(10),
//       //   //       // border: Border.all(color: Colors.black, width: 1),
//       //   //       // borderRadius: BorderRadius.only(
//       //   //       //   bottomLeft: Radius.circular(20),
//       //   //       //   topRight: Radius.circular(20),
//       //   //       // ),
//       //   //       color: Colors.red,
//       //   //     ),
//       //   //   ),
//       //   //
//       //   //   Container(
//       //   //     margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//       //   //     // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
//       //   //     height: height * 0.25,
//       //   //     width: width,
//       //   //     decoration: BoxDecoration(
//       //   //       // shape: BoxShape.circle,
//       //   //       boxShadow: [
//       //   //         BoxShadow(
//       //   //           color: Colors.black.withOpacity(0.4),
//       //   //           blurRadius: 6,
//       //   //         ),
//       //   //       ],
//       //   //       gradient: LinearGradient(
//       //   //         begin: Alignment.topLeft,
//       //   //         end: Alignment.bottomRight,
//       //   //         stops: [0.1, 1, 1.5],
//       //   //         colors: [Colors.red, Colors.pink, Colors.yellow],
//       //   //       ),
//       //   //
//       //   //       borderRadius: BorderRadius.circular(10),
//       //   //       // border: Border.all(color: Colors.black, width: 1),
//       //   //       // borderRadius: BorderRadius.only(
//       //   //       //   bottomLeft: Radius.circular(20),
//       //   //       //   topRight: Radius.circular(20),
//       //   //       // ),
//       //   //       color: Colors.red,
//       //   //     ),
//       //   //   ),
//       //   // ],
//       //
//       //   children: [
//       //
//       //
//       //     Column(
//       //       children: [
//       //
//       //       ],
//       //     ),
//       //
//       //
//       //     Row(
//       //       children: [
//       //
//       //       ],
//       //     ),
//       //
//       //
//       //
//       //     Text("Iqra College"),
//       //     // SizedBox(width: 10,),
//       //     Text("Iqra College"),
//       //     // SizedBox(width: 10,),
//       //     Text("Iqra College"),
//       //     // SizedBox(width: 10,),
//       //     Text("Iqra College"),
//       //   ],
//       // ),
//     );
//   }
// }


