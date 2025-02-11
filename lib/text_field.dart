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
  TextEditingController controller =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Field"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  icon: Icon(Icons.person), // diluar border
                  prefixIcon: Icon(Icons.person), // didalam border
                  prefixText: "Nama ", // prefix didalam border
                  prefixStyle: TextStyle(color: Colors.deepPurple),
                  labelText: "Nama Lengkap",
                  hintText: "Masukkan nama lengkap",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                ),
                obscureText: false, // untuk tampilan password
                maxLength: 15, // untuk membatasi jumlah karakter
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              Text(controller.text)
            ],
          ),
        ),
      ),
    );
  }
}
