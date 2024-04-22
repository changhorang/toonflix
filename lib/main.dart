import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color(0xFF181818),
            body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
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
                    SizedBox(
                      height: 120,
                    ),
                    Text(
                      'Total Balance',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8), fontSize: 22),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '\$5 194 482',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 42,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(45)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 40,
                            ),
                            child: Text(
                              'Transfer',
                              style: TextStyle(fontSize: 22),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ))));
  }
}
