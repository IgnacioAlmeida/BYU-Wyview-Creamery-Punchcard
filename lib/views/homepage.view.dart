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
            // Text("current total amount spent: ${_currentTotalAmountSpent}"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: const Value(value: 1),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 2),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 3),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 4),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 5),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 6),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 7),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 8),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: const Value(value: 9),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 10),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 11),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 12),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 13),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 14),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 15),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                const PinkCircle()
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: const Value(value: 17),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 18),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 19),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 20),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 21),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 22),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 23),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 24),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: const Value(value: 25),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                const OrangeCircle(),
                ValueCircle(
                  value: const Value(value: 27),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 28),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 29),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 30),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 31),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 32),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: const Value(value: 33),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 34),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 35),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 36),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 37),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 38),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 39),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 40),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: const Value(value: 41),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 42),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 43),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 44),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 45),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 46),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 47),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 48),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: const Value(value: 49),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 50),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 51),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 52),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 53),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 54),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 55),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 56),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: const Value(value: 57),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 58),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 59),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 60),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 61),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 62),
                  totalAmountSpent: _currentTotalAmountSpent,
                ),
                ValueCircle(
                  value: const Value(value: 63),
                  totalAmountSpent: _currentTotalAmountSpent,
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
            // ElevatedButton(
            //     style: mainButton,
            //     onPressed: () {
            //       _resetTotalAmount();
            //     },
            //     child: const Text("Reset total amount")),
          ],
        ),
      ),
    );
  }
}
