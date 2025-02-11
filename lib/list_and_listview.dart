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
  List<Widget> daftarIsi = [];
  int counter = 1;

  // _MyAppState() {
  //   for (int i = 1; i <= 15; i++) {
  //     daftarIsi.add(Text("Data ke-$i"));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "List View",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        daftarIsi.add(Text(
                          "Data ke-$counter",
                          style: TextStyle(fontSize: 25),
                        ));
                        counter++;
                      });
                    },
                    child: Text("Tambah Data")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        daftarIsi.removeLast();
                        counter--;
                      });
                    },
                    child: Text("Hapus Data"))
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: daftarIsi,
            )
          ],
        ),
      ),
    );
  }
}
