import 'package:flutter/material.dart';
import 'package:flutter_first/myscaffold.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My app",
      home: MyScaffold(),
    );
  }
}
