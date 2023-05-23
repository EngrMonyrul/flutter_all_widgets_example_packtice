import 'package:flutter/material.dart';
import 'package:widgetsfactory/consts/images/images.dart';
import 'package:animate_do/animate_do.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(bg), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            children: [
              ZoomIn(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Image.asset(Looking),
                ),
              ),
              const Spacer(),
              BounceInDown(
                child: Container(
                  alignment: Alignment.center,
                  child: const Text.rich(TextSpan(children: [
                    TextSpan(
                        text: 'F',
                        style:
                            TextStyle(fontSize: 120, color: Colors.blueAccent)),
                    TextSpan(
                        text: 'LUTTER',
                        style:
                            TextStyle(fontSize: 50, color: Colors.blueAccent))
                  ])),
                ),
              ),
              //const SizedBox(height: 20,),
              FadeInDown(
                  child: const Text(
                'Learn All The Widgets In One App',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
