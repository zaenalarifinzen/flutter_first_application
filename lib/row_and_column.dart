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
          title: Text("Row and Column", style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
        ),

        // Tampilan Kolom (ke bawah)
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center, // untuk mengatur aligment childrennya
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Text 1"),
            Text("Text 2"),
            Text("Text 3"),
            Text("Text 4"),
            Row(
              children: [
                Text("Text 5"),
                Text("Text 6"),
                Text("Text 7"),
              ],
            )
          ],
        ),

        // Tampilan Baris (ke samping)
        // body: Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Text("Baris 1"),
        //     Text("Baris 2"),
        //     Text("Baris 3"),
        //     Text("Baris 4"),
        //   ],
        // ),
      ),
    );
  }
}
