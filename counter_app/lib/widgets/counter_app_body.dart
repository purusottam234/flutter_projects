import 'package:counter_app/widgets/app_title.dart';
import 'package:flutter/material.dart';

class CounterAPPBody extends StatefulWidget {
  const CounterAPPBody({super.key});

  @override
  State<CounterAPPBody> createState() => _CounterAPPBodyState();
}

class _CounterAPPBodyState extends State<CounterAPPBody> {
  // the current status of the counter
  int counter = 0;
  // increase the counter by 1
  void increase() {
    setState(() {
      counter++;
    });
  }

  // decreases counter by 1
  void decrease() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const AppTitle(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: decrease,
                  child: const Text("-"),
                ),
                Text('$counter'),
                ElevatedButton(
                  onPressed: increase,
                  child: const Text("+"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
