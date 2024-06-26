import 'package:flutter/material.dart';
import 'package:toonflix/widget/button.dart';
import 'package:toonflix/widget/curr_card.dart';

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
            body: SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                        height: 60,
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
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Walltets",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                                fontWeight: FontWeight.w600),
                          ),
                          Text("View All",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CurrencyCard(
                        name: 'Euro',
                        code: 'EUR',
                        amount: '6 428',
                        icon: Icons.euro_rounded,
                        isInverted: false,
                        offval: 0,
                      ),
                      const CurrencyCard(
                        name: 'Bitcoin',
                        code: 'BTC',
                        amount: '9 525',
                        icon: Icons.currency_bitcoin,
                        isInverted: true,
                        offval: 3,
                      ),
                      const CurrencyCard(
                        name: 'Dollar',
                        code: '\$',
                        amount: '7 321',
                        icon: Icons.attach_money_outlined,
                        isInverted: false,
                        offval: 6,
                      ),
                    ],
                  )),
            )));
  }
}
