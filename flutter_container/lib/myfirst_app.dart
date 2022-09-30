import 'package:flutter/material.dart';
import 'package:flutter_container/my_container.dart';

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyContainerWidget(),
    );
  }
}
