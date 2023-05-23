import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    centerTitle: true,
    elevation: 8,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8))),
    backgroundColor: Colors.blue,
    title: const Text('Widgets Factory'),
  );
}
