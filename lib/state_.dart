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
  // List<int> numbers = [];

  // void onClicked() {
  //   // setState(() {
  //   //   counter = counter + 1;
  //   // });
  //   setState(() {
  //     numbers.add(numbers.length);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: const TextTheme(
              titleLarge: TextStyle(
        color: Colors.red,
      ))),
      home: const Scaffold(
        backgroundColor: Color(0xFFF4FDDB),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyLargeTitle(),
          ],
        )),
      ),
    );
  }
}

class MyLargeTitle extends StatelessWidget {
  const MyLargeTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'My Large Title',
      style: TextStyle(
          fontSize: 40, color: Theme.of(context).textTheme.titleLarge?.color),
    );
  }
}
