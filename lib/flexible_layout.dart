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
          title: Text("Flexible Layout"),
        ),
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.lightBlue,
                  )),
                  Flexible(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.blueAccent,
                  )),
                  Flexible(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.lightBlueAccent,
                  )),
                ],
              ),
            ),
            Flexible(
                flex: 2,
                
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.yellowAccent,
                )),
            Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.green,
                )),
          ],
        ),
      ),
    );
  }
}
