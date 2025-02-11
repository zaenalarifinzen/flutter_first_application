import 'package:flutter/material.dart';

void main() {
  runApp(MyMediaQuery());
}

class MyMediaQuery extends StatelessWidget {
  const MyMediaQuery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MediaQueryPage(),
    );
  }
}

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Media Query",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: (MediaQuery.of(context).orientation == Orientation.portrait) // periksa orientasi layar (mengunakan if singkat)
          ? Column(
              children: generateContainer,
            ) // jika benar
          : Row(
              children: generateContainer,
            ), // jika salah
    );
  }

  List<Widget> get generateContainer {
    return [
      Container(
        color: Colors.red,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.green,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.blue,
        width: 100,
        height: 100,
      )
    ];
  }
}
