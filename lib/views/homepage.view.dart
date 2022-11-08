import 'package:creamery/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'cashier.view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentTotalAmountSpent = 0;

  @override
  void initState() {
    super.initState();
    _setTotalAmountSpent();
  }

  Future<void> _setTotalAmountSpent() async {
    final prefs = await SharedPreferences.getInstance();
    int? totalAmountSpent = prefs.getInt('totalAmountSpent');
    totalAmountSpent ??= 0;
    setState(() => _currentTotalAmountSpent = totalAmountSpent!);
  }

  Future<void> _resetTotalAmount() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('totalAmountSpent', 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/creamery_logo.svg.png',
              height: 140,
              width: 140,
            ),
            Text("current total amount spent: ${_currentTotalAmountSpent}"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: const Value(value: 1),
                ),
                ValueCircle(
                  value: const Value(value: 2),
                ),
                ValueCircle(
                  value: const Value(value: 3),
                ),
                ValueCircle(
                  value: const Value(value: 4),
                ),
                ValueCircle(
                  value: const Value(value: 5),
                ),
                ValueCircle(
                  value: const Value(value: 6),
                ),
                ValueCircle(
                  value: const Value(value: 7),
                ),
                ValueCircle(
                  value: const Value(value: 8),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: const Value(value: 9),
                ),
                ValueCircle(
                  value: const Value(value: 10),
                ),
                ValueCircle(
                  value: const Value(value: 11),
                ),
                ValueCircle(
                  value: const Value(value: 12),
                ),
                ValueCircle(
                  value: const Value(value: 13),
                ),
                ValueCircle(
                  value: const Value(value: 14),
                ),
                ValueCircle(
                  value: const Value(value: 15),
                ),
                const PinkCircle()
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: const Value(value: 17),
                ),
                ValueCircle(
                  value: const Value(value: 18),
                ),
                ValueCircle(
                  value: const Value(value: 19),
                ),
                ValueCircle(
                  value: const Value(value: 20),
                ),
                ValueCircle(
                  value: const Value(value: 21),
                ),
                ValueCircle(
                  value: const Value(value: 22),
                ),
                ValueCircle(
                  value: const Value(value: 23),
                ),
                ValueCircle(
                  value: const Value(value: 24),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: const Value(value: 25),
                ),
                const OrangeCircle(),
                ValueCircle(
                  value: const Value(value: 27),
                ),
                ValueCircle(
                  value: const Value(value: 28),
                ),
                ValueCircle(
                  value: const Value(value: 29),
                ),
                ValueCircle(
                  value: const Value(value: 30),
                ),
                ValueCircle(
                  value: const Value(value: 31),
                ),
                ValueCircle(
                  value: const Value(value: 32),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: const Value(value: 33),
                ),
                ValueCircle(
                  value: const Value(value: 34),
                ),
                ValueCircle(
                  value: const Value(value: 35),
                ),
                ValueCircle(
                  value: const Value(value: 36),
                ),
                ValueCircle(
                  value: const Value(value: 37),
                ),
                ValueCircle(
                  value: const Value(value: 38),
                ),
                ValueCircle(
                  value: const Value(value: 39),
                ),
                ValueCircle(
                  value: const Value(value: 40),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: const Value(value: 41),
                ),
                ValueCircle(
                  value: const Value(value: 42),
                ),
                ValueCircle(
                  value: const Value(value: 43),
                ),
                ValueCircle(
                  value: const Value(value: 44),
                ),
                ValueCircle(
                  value: const Value(value: 45),
                ),
                ValueCircle(
                  value: const Value(value: 46),
                ),
                ValueCircle(
                  value: const Value(value: 47),
                ),
                ValueCircle(
                  value: const Value(value: 48),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: const Value(value: 49),
                ),
                ValueCircle(
                  value: const Value(value: 50),
                ),
                ValueCircle(
                  value: const Value(value: 51),
                ),
                ValueCircle(
                  value: const Value(value: 52),
                ),
                ValueCircle(
                  value: const Value(value: 53),
                ),
                ValueCircle(
                  value: const Value(value: 54),
                ),
                ValueCircle(
                  value: const Value(value: 55),
                ),
                ValueCircle(
                  value: const Value(value: 56),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: const Value(value: 57),
                ),
                ValueCircle(
                  value: const Value(value: 58),
                ),
                ValueCircle(
                  value: const Value(value: 59),
                ),
                ValueCircle(
                  value: const Value(value: 60),
                ),
                ValueCircle(
                  value: const Value(value: 61),
                ),
                ValueCircle(
                  value: const Value(value: 62),
                ),
                ValueCircle(
                  value: const Value(value: 63),
                ),
                const BlueCircle()
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    PinkCircle(),
                    PinkPriceText,
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: const [OrangeCircle(), OrangePriceText],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    BlueCircle(),
                    BluePriceText,
                  ],
                )
              ],
            ),
            const SizedBox(height: 0),
            ElevatedButton(
                style: mainButton,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const CashierView();
                  }));
                },
                child: const Text("Punch Card")),
            ElevatedButton(
                style: mainButton,
                onPressed: () {
                  _resetTotalAmount();
                },
                child: const Text("Reset total amount")),
          ],
        ),
      ),
    );
  }
}
