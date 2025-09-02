import 'package:flutter/material.dart';
import 'package:training/size.dart';
import 'package:training/textfield26_08_2025/page.dart';
import 'package:training/views/splash.dart';

import 'buttons27_08_2025/btn.dart';
import 'components/text_field.dart';
import 'list_grid 01_09_2025/list_grid_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder:
          (context, orientation, deviceType) => GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),

            child: MaterialApp(
              theme: ThemeData(fontFamily: "Poppins"),

              debugShowCheckedModeBanner: false,
              home: Splash(),
            ),
          ),
    );
  }
}
