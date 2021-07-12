import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'IntroScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Avenir',
        primaryColor: Color.fromRGBO(158, 183, 255, 1),
      ),
      home: IntroScreen(),
    );
  }
}
