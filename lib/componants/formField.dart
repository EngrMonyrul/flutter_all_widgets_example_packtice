import 'package:flutter/material.dart';

class FormFieldDesign extends StatefulWidget {
  const FormFieldDesign({Key? key}) : super(key: key);

  @override
  State<FormFieldDesign> createState() => _FormFieldDesignState();
}

class _FormFieldDesignState extends State<FormFieldDesign> {
  @override
  Widget build(BuildContext context) {
    bool securityValue = true;
    Size bodySize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(bodySize.width * 0.1),
        decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            border: Border.all(color: Colors.white, width: 2),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 15,
                spreadRadius: 5,
              ),
            ]),
        child: Container(
          margin: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'Student Form',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    letterSpacing: 3,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'MD. Monirul Islam',
                    hintStyle: TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    label: Text('Name'),
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      //gapPadding: 10,
                    ),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '########',
                    hintStyle: const TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    label: const Text('Password'),
                    labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      //gapPadding: 10,
                    ),
                    prefixIcon: const Icon(Icons.security),
                    suffixIcon: InkWell(
                      onTap: () {
                        if(securityValue==true)
                          {
                            //print(securityValue);
                            securityValue = false;
                          }
                        else
                          {
                            securityValue = true;
                          }
                        setState(() {});
                      },
                      child: Icon(securityValue
                          ? Icons.remove_red_eye
                          : Icons.visibility_off),
                    ),
                  ),
                  obscureText: securityValue,
                  obscuringCharacter: '#',
                  maxLength: 8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
