import 'package:flutter/material.dart';

class Example22 extends StatefulWidget {
  const Example22({Key? key}) : super(key: key);

  @override
  State<Example22> createState() => _Example22State();
}

class _Example22State extends State<Example22> {
  List<bool> status = [];

  bool istatus = false;

  @override
  void initState() {
    // TODO: implement initState
    for (int i = 0; i < 9; i++) {
      status.add(false);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            //1st children
            CheckboxListTile(
              value: status[0],
              onChanged: (Sts) {
                status[0] = Sts!;
              },
              title: const Text('Get Up Early'),
              subtitle:
                  const Text('This Is Very Good Habit, Must Follow This.'),
              selected: status[0],
              activeColor: Colors.green,
              controlAffinity: ListTileControlAffinity.leading,
              secondary: IconButton(
                icon: const Icon(Icons.star),
                onPressed: () {
                  if (istatus == true) {
                    const Icon(
                      Icons.star,
                      color: Colors.yellowAccent,
                    );
                  }
                  setState(() {
                    istatus = !istatus;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
