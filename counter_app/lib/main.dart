// a title at the top with two red and green signal
// counter itself in the middle
// a scrollable list at the bottom

// structure
// widget/
//  -app_title.dart
//  -history.dart
// counter_app_body.dart

import 'package:counter_app/widgets/counter_app_body.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EnhancedCounterApp());
}

class EnhancedCounterApp extends StatelessWidget {
  const EnhancedCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterAPPBody(),
      debugShowCheckedModeBanner: false,
    );
  }
}
