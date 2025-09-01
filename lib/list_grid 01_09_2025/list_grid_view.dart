import 'package:flutter/material.dart';
import 'package:training/size.dart';

class ListGridView extends StatelessWidget {
  const ListGridView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> cities = [
      "Lahore",
      "Karachi",
      "Multan",
      "RYK",
      "SDK",
      "ahahsh",
      "Lahore",
      "Karachi",
      "Multan",
      "RYK",
      "SDK",
      "ahahsh",

      "Lahore",
      "Karachi",
      "Multan",
      "RYK",
      "SDK",
      "ahahsh",
      "Lahore",
      "Karachi",
      "Multan",
      "RYK",
      "SDK",
      "ahahsh",
      "Lahore",
      "Karachi",
      "Multan",
      "RYK",
      "SDK",
      "ahahsh",
      "Lahore",
      "Karachi",
      "Multan",
      "RYK",
      "SDK",
      "ahahsh",
      "Lahore",
      "Karachi",
      "Multan",
      "RYK",
      "SDK",
      "ahahsh",
      "Lahore",
      "Karachi",
      "Multan",
      "RYK",
      "SDK",
      "ahahsh",
    ];

    List<String> even =
        cities.where((city) {
          return city.contains("ah");
        }).toList();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),

      // body: Column(
      //   children: [
      //     Expanded(
      //       child: ListView.builder(
      //         physics: BouncingScrollPhysics(),
      //         // scrollDirection: Ac,
      //         itemCount: 10,
      //         itemBuilder: (context, index) {
      //           return ListItem(text: '$index');
      //         },
      //       ),
      //     ),
      //
      //
      //
      //
      //
      //
      //   ],
      // ),
      // body: Column(
      //   children: [
      //     // GridView.builder(
      //     //   physics: BouncingScrollPhysics(),
      //     //   // scrollDirection: Axis.horizontal,
      //     //   itemCount: cities.length,
      //     //   itemBuilder: (context, index) {
      //     //     return ListItem(text: cities[index]);
      //     //   }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3)
      //     // ),
      //
      //     // Expanded(
      //     //   child: ListView.builder(
      //     //     physics: BouncingScrollPhysics(),
      //     //     // scrollDirection: Ac,
      //     //     itemCount: 10,
      //     //     itemBuilder: (context, index) {
      //     //       return ListItem(text: '$index');
      //     //     },
      //     //   ),
      //     // ),
      //   ],
      // ),
      body: GridView.builder(
        physics: BouncingScrollPhysics(),
        // scrollDirection: Axis.horizontal,
        itemCount: cities.length,
        itemBuilder: (context, index) {
          return ListItem(text: cities[index]);
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisSpacing: 10.v,
          crossAxisSpacing: 10.h,
          // childAspectRatio: 1,
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String text;
  const ListItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.v,
      width: 100.h,

      // margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.v),
      // height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue.shade200,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 18.fSize),
        ),
      ),
    );
  }
}
