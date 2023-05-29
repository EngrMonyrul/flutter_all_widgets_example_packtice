import 'package:flutter/material.dart';

class Example23 extends StatefulWidget {
  const Example23({Key? key}) : super(key: key);

  @override
  State<Example23> createState() => _Example23State();
}

class _Example23State extends State<Example23> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Container(
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.4,
              left: MediaQuery.of(context).size.width * 0.3,
              right: MediaQuery.of(context).size.width * 0.3,
              bottom: MediaQuery.of(context).size.height * 0.4),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            color: Colors.green.shade200
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Select Your Gender: ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Male',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Radio(
                      value: 1,
                      groupValue: value,
                      activeColor: Colors.amber,
                      onChanged: (status) {
                        setState(() {
                          value = status!;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Female',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Radio(
                      value: 2,
                      groupValue: value,
                      activeColor: Colors.amber,
                      onChanged: (status) {
                        setState(() {
                          value = status!;
                        });
                      },
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Shemale',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Radio(
                      value: 3,
                      groupValue: value,
                      activeColor: Colors.amber,
                      onChanged: (status) {
                        setState(() {
                          value = status!;
                        });
                      },
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Others',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Radio(
                      value: 4,
                      groupValue: value,
                      activeColor: Colors.amber,
                      onChanged: (status) {
                        setState(() {
                          value = status!;
                        });
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
