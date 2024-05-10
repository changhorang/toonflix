import 'package:flutter/material.dart';

void main() {
  runApp(const App1());
}

class App1 extends StatefulWidget {
  const App1({super.key});

  @override
  State<App1> createState() => _AppState();
}

class _AppState extends State<App1> {
  // int counter = 0;
  List<int> numbers = [];

  void onClicked() {
    // setState(() {
    //   counter = counter + 1;
    // });
    setState(() {
      numbers.add(numbers.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4FDDB),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Click Count',
              style: TextStyle(fontSize: 30),
            ),
            // Text(
            //   '$counter',
            //   style: const TextStyle(fontSize: 30),
            // ),
            for (var n in numbers) Text('$n'),
            IconButton(
              onPressed: onClicked,
              icon: const Icon(Icons.add_box_rounded),
              iconSize: 40,
            ),
          ],
        )),
      ),
    );
  }
}
