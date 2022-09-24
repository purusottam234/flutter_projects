import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({required this.title});
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 116,
      decoration: BoxDecoration(color: Colors.redAccent),
      child: Row(
        children: [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.menu),
            tooltip: "Navigation menu",
          ),
          Expanded(
            child: title,
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
            tooltip: "Search",
          ),
        ],
      ),
    );
  }
}
