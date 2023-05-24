import 'package:flutter/material.dart';

class Example3 extends StatefulWidget {
  const Example3({Key? key}) : super(key: key);

  @override
  State<Example3> createState() => _Example3State();
}

class _Example3State extends State<Example3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(color: Colors.green),
                  child: Text('Text'),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(color: Colors.green),
                  child: Text('Text'),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(color: Colors.green),
                  child: Text('Text'),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(color: Colors.green),
                  child: Text('Text'),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(color: Colors.green),
                  child: Text('Text'),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              child: Image.asset('assets/codesnap/rowwidget.png'),
            )
          ],
        ),
      )),
    );
  }
}
