import 'package:flutter/material.dart';
import 'package:toonflix/widget/button.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color(0xFF181818),
            body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              'Hey, Seul Gi',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 38,
                                  fontWeight: FontWeight.w800),
                            ),
                            Text(
                              'Welcome back',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 21),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 120,
                    ),
                    Text(
                      'Total Balance',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8), fontSize: 22),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      '\$5 194 482',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 42,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Button(
                            text: "Transfer",
                            bgColor: Color(0xFFF1B33B),
                            textColor: Colors.black),
                        Button(
                            text: "Request",
                            bgColor: Color(0xFF1F2123),
                            textColor: Colors.white),
                      ],
                    )
                  ],
                ))));
  }
}
