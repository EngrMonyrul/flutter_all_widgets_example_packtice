import 'package:flutter/material.dart';
import 'package:widgetsfactory/componants/herosection.dart';
import 'package:widgetsfactory/componants/itemsection.dart';
import 'package:widgetsfactory/componants/scaffoldarea.dart';

import '../consts/images/images.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size bodySize = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(bg), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: buildAppBar(),
        body: const SingleChildScrollView(
          child: ItemSection(),
        )
      ),
    );
  }
}
