import 'package:flutter/material.dart';
import 'package:flutter_first_application/ui/page_view_source.dart';

void main(){
  runApp(MyPageView());
}

class MyPageView extends StatelessWidget {
  const MyPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: ViewSource(),
    );
  }
}