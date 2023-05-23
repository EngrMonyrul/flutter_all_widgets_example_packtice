import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widgetsfactory/pages/homepage.dart';
import 'package:widgetsfactory/pages/splashScreen.dart';
import 'package:widgetsfactory/topics/containerWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widgets Factory',
      theme: ThemeData(
          fontFamily: 'Playfair',
          visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Example1(),
    );
  }
}
