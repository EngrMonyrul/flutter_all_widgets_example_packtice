import 'package:flutter/material.dart';

class Example2 extends StatefulWidget {
  const Example2({Key? key}) : super(key: key);

  @override
  State<Example2> createState() => _Example2State();
}

class _Example2State extends State<Example2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            textDirection: TextDirection.rtl,
            children: [
              Container(
                height: 30,
                child: Text('Column Widget Example'),
              ),
              Container(
                alignment: Alignment.center,
                height: 20,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: Colors.black)),
                child: Text('1'),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                height: 20,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: Colors.black)),
                child: Text('1'),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                height: 20,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: Colors.black)),
                child: Text('1'),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                height: 20,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: Colors.black)),
                child: Text('1'),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                height: 20,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: Colors.black)),
                child: Text('1'),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                height: 20,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: Colors.black)),
                child: Text('1'),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                height: 20,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: Colors.black)),
                child: Text('1'),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                height: 20,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: Colors.black)),
                child: Text('1'),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                height: 20,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: Colors.black)),
                child: Text('1'),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                height: 20,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: Colors.black)),
                child: Text('1'),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 30,
                child: Text('Sample Code'),
              ),
              Container(
                child: Image.asset(
                  'assets/codesnap/column.png',
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
