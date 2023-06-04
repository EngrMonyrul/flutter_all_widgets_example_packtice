import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widgetsfactory/componants/formField.dart';
import 'package:widgetsfactory/topics/apimodels.dart';
import 'package:widgetsfactory/topics/appbarwidget.dart';
import 'package:widgetsfactory/topics/checkboxlisttile.dart';
import 'package:widgetsfactory/topics/checkboxwidget.dart';
import 'package:widgetsfactory/topics/listview.dart';
import 'package:widgetsfactory/topics/post_api_fetching.dart';
import 'package:widgetsfactory/topics/postapifetch2.dart';
import 'package:widgetsfactory/topics/radiowidget.dart';
import 'package:widgetsfactory/topics/textfieldWidget.dart';

import 'componants/examp.dart';

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
      home:const ApIModels(),
    );
  }
}
