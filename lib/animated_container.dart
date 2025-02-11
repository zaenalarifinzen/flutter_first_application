import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random randomNumber = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animated Container"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: GestureDetector(
            onTap: (){
              setState(() {
                
              });
            },
            child: AnimatedContainer(
              color: Color.fromARGB(255, randomNumber.nextInt(256),
                  randomNumber.nextInt(256), randomNumber.nextInt(256)),
              duration: Duration(milliseconds: 100),
              width: 50.0 + randomNumber.nextInt(101),
              height: 50.0 + randomNumber.nextInt(101),
            ),
          ),
        ),
      ),
    );
  }
}
