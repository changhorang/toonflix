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
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }
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
      home: Scaffold(
        backgroundColor: const Color(0xFFF4FDDB),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            showTitle ? const MyLargeTitle() : const Text('Nothing'),
            IconButton(
                onPressed: toggleTitle, icon: const Icon(Icons.remove_red_eye)),
          ],
        )),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    Key? key,
  }) : super(key: key);

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  int count = 0;

  @override
  void initState() {
    super.initState();
    print('initState!'); // Class variable initialize
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose!'); // Event Listener
  }

  @override
  Widget build(BuildContext context) {
    print('build!');
    return Text(
      'My Large Title',
      style: TextStyle(
          fontSize: 40, color: Theme.of(context).textTheme.titleLarge?.color),
    );
  }
}
