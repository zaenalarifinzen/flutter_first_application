import 'package:flutter/material.dart';

class ViewSource extends StatelessWidget {
  const ViewSource({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ViewPage"),),
      body: PageView(
        onPageChanged: (index){print("Halaman $index");}, // apa yang akan terjadi ketika halaman berpindah
        children: [
          Container(color: Colors.red,),
          Container(color: Colors.green,),
          Container(color: Colors.blue,),
          Container(color: Colors.yellow,),
        ],
      ),
    );
  }
}