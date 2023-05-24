import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widgetsfactory/topics/listview.dart';
import 'package:widgetsfactory/topics/textfieldWidget.dart';

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
      home: const Example18(),
    );
  }
}
