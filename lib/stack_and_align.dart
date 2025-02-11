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
          title: Text("Stack & Align"),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.orangeAccent,
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.amber,
                            )),
                      ],
                    )),
                Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.blue,
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.lightBlue,
                            )),
                      ],
                    ))
              ],
            ), // Color Background
            ListView(
              children: [
                Column(
                  children: [
                    Text(
                      "Ini teks yanga ada ditengah",
                      style: TextStyle(fontSize: 25),
                    )
                  ],
                )
              ],
            ),
            Align(
              alignment: Alignment(0, -0.75),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Tombol Saya"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
