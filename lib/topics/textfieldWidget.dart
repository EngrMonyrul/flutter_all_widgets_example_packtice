import 'package:flutter/material.dart';

class Example18 extends StatefulWidget {
  const Example18({Key? key}) : super(key: key);

  @override
  State<Example18> createState() => _Example18State();
}

class _Example18State extends State<Example18> {
  @override
  Widget build(BuildContext context) {

    String text = '';
    bool secure = true;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Your Name',
                  hintStyle: const TextStyle(
                    fontSize: 10,
                    color: Colors.red,
                  ),
                  label: const Text('Name'),
                  labelStyle: const TextStyle(
                    color: Colors.deepPurple
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  prefixIcon: const Icon(Icons.person,),
                  suffixIcon: IconButton(
                    icon: Icon(secure?Icons.remove_red_eye:Icons.security),
                    onPressed: (){
                      setState(() {
                        secure = !secure;
                      });
                    },
                  ),
                ),
                keyboardType: TextInputType.text,
                obscureText: secure,
                obscuringCharacter: '#',
                maxLength: 10,
                onSubmitted: (value){
                  setState(() {
                    text = value;
                  });
                },
              ),
            )
          ],
        ),
      )
    );
  }
}
