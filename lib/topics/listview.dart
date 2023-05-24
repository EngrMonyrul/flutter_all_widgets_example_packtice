import 'package:flutter/material.dart';

class Example4 extends StatefulWidget {
  const Example4({Key? key}) : super(key: key);

  @override
  State<Example4> createState() => _Example4State();
}

class _Example4State extends State<Example4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Container(
              height: 20,
              color: Colors.red,
              child: const Text('Hello World'),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 20,
              color: Colors.red,
              child: const Text('Hello World'),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 20,
              color: Colors.red,
              child: const Text('Hello World'),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 20,
              color: Colors.red,
              child: const Text('Hello World'),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 20,
              color: Colors.red,
              child: const Text('Hello World'),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 20,
              color: Colors.red,
              child: const Text('Hello World'),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
