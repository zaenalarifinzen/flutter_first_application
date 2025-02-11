import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Style"),
        ),
        body: Center(
          child: Text(
            "Al-Kalam",
            style: TextStyle(
              fontFamily: "CinzelDecorative", 
              fontSize: 30,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ),
    );
  }
}
