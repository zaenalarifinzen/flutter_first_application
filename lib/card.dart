import 'package:flutter/material.dart';

void main() {
  runApp(CardView());
}

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              buildcard(Icons.account_circle_rounded, "Akun"),
              buildcard(Icons.settings, "Pengaturan"),
              buildcard(Icons.help, "Bantuan"),
            ],
          ),
        ),
      ),
    );
  }

  // method untuk mengatur tampilan cardnya
  Card buildcard(IconData iconData, String nameData) {
    return Card(
                elevation: 3,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Icon(iconData),
                    ),
                    Text(nameData)
                  ],
                ));
  }
}
