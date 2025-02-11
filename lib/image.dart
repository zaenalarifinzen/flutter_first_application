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
          title: Text("Image"),
        ),
        body: Center(
          child: Container(
            // color: Colors.white,
            width: 200,
            height: 200,
            padding: EdgeInsets.all(3),
            child: Image(
              image: AssetImage(
                  "images/logo_al_fuadi.png"),
              // fit: BoxFit.fitHeight,
              // repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
    );
  }
}
