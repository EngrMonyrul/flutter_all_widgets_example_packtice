import 'package:flutter/material.dart';

class Example21 extends StatefulWidget {
  const Example21({Key? key}) : super(key: key);

  @override
  State<Example21> createState() => _Example21State();
}

class _Example21State extends State<Example21> {
  List<bool> Value = [];
  bool result1 = false;
  bool result2 = false;

  @override
  void initState() {
    // TODO: implement initState
    for (int i = 0; i < 19; i++) {
      Value.add(false);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.deepPurple,
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.black, width: 2),
          ),
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text('CheckBox 1'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Checkbox(
                    value: Value[0],
                    onChanged: (status) {
                      setState(() {
                        Value[0] = status!;
                      });
                    },
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    activeColor: Colors.green,
                    //hoverColor: Colors.transparent,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text('CheckBox 2'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Checkbox(
                    value: Value[1],
                    onChanged: (status) {
                      setState(() {
                        Value[1] = status!;
                      });
                    },
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    activeColor: Colors.green,
                    //hoverColor: Colors.transparent,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text('CheckBox 3'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Checkbox(
                    value: Value[2],
                    onChanged: (status) {
                      setState(() {
                        Value[2] = status!;
                      });
                    },
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    activeColor: Colors.green,
                    //hoverColor: Colors.transparent,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text('CheckBox 4'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Checkbox(
                    value: Value[3],
                    onChanged: (status) {
                      setState(() {
                        Value[3] = status!;
                      });
                    },
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    activeColor: Colors.green,
                    //hoverColor: Colors.transparent,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text('CheckBox 5'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Checkbox(
                    value: Value[4],
                    onChanged: (status) {
                      setState(() {
                        Value[4] = status!;
                      });
                    },
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    activeColor: Colors.green,
                    //hoverColor: Colors.transparent,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text('CheckBox 6'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Checkbox(
                    value: Value[5],
                    onChanged: (status) {
                      setState(() {
                        Value[5] = status!;
                      });
                    },
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    activeColor: Colors.green,
                    //hoverColor: Colors.transparent,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text('CheckBox 7'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Checkbox(
                    value: Value[6],
                    onChanged: (status) {
                      setState(() {
                        Value[6] = status!;
                      });
                    },
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    activeColor: Colors.green,
                    //hoverColor: Colors.transparent,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text('CheckBox 8'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Checkbox(
                    value: Value[7],
                    onChanged: (status) {
                      setState(() {
                        Value[7] = status!;
                      });
                    },
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    activeColor: Colors.green,
                    //hoverColor: Colors.transparent,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text('CheckBox 9'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Checkbox(
                    value: Value[8],
                    onChanged: (status) {
                      setState(() {
                        Value[8] = status!;
                      });
                    },
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    activeColor: Colors.green,
                    //hoverColor: Colors.transparent,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text('CheckBox 10'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Checkbox(
                    value: Value[9],
                    onChanged: (status) {
                      setState(() {
                        Value[9] = status!;
                      });
                    },
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    activeColor: Colors.green,
                    //hoverColor: Colors.transparent,
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text('Select All'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Checkbox(
                        value: result1,
                        onChanged: (status) {
                          setState(() {
                            result1 = status!;
                            for (int i = 0; i < 10; i++) {
                              Value[i] = status;
                            }
                          });
                        },
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        activeColor: Colors.green,
                        //hoverColor: Colors.transparent,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
