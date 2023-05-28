import 'package:flutter/material.dart';

class ytexamp extends StatefulWidget {
  @override
  _ytexampState createState() => _ytexampState();
}

class _ytexampState extends State<ytexamp> {
  String text = '';

  bool _secure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                hintText: 'enter your name',
                labelText: 'Name',
                labelStyle: TextStyle(color: Colors.orange, fontSize: 18),
                hintStyle: TextStyle(color: Colors.redAccent, fontSize: 18),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                prefixIcon: Icon(Icons.account_circle),
                suffixIcon: IconButton(
                  icon: Icon(_secure ? Icons.remove_red_eye : Icons.security),
                  onPressed: () {
                    setState(
                      () {
                        _secure = !_secure;
                      },
                    );
                  },
                ),
                errorText: text.isEmpty ? 'Empty' : null),
            keyboardType: TextInputType.text,
            obscureText: _secure,
            obscuringCharacter: '*',
            maxLength: 10,
            //maxLines: 2,
            onChanged: (value) {
              text = value;
            },
            onSubmitted: (value) {
              setState(() {
                text = value;
              });

              print(value);
            },
          )
        ],
      ),
    );
  }
}
