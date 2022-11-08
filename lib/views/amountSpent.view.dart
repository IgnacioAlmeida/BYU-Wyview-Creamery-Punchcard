import 'package:creamery/views/homepage.view.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/constants.dart';

class AmountSpentView extends StatefulWidget {
  const AmountSpentView({super.key});

  @override
  State<AmountSpentView> createState() => _AmountSpentViewState();
}

class _AmountSpentViewState extends State<AmountSpentView> {
  TextEditingController amountSpent = TextEditingController();
  int _currentAmountSpent = 0;
  int _currentTotalSpentDebug = 0;

  Future<int> _getTotalAmountSpent() async {
    final prefs = await SharedPreferences.getInstance();
    final totalAmountSpent = prefs.getInt('totalAmountSpent');
    if (totalAmountSpent == null) {
      return 0;
    }
    return totalAmountSpent;
  }

  Future<void> _setTotalAmountSpent() async {
    final prefs = await SharedPreferences.getInstance();
    _currentAmountSpent = int.parse(amountSpent.text);
    int _lastTotalAmountSpent = await _getTotalAmountSpent();
    int totalSpent = _currentAmountSpent + _lastTotalAmountSpent;
    await prefs.setInt('totalAmountSpent', totalSpent);
    _currentTotalSpentDebug = totalSpent;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Image.asset(
              'assets/creamery_logo.svg.png',
              height: 140,
              width: 140,
            ),
            const SizedBox(height: 50),
            const Text(
              "Enter the amount spent by the customer",
              style: TextStyle(fontSize: 35),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            TextField(
              controller: amountSpent,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: '\$',
                hintText: 'Total Amount Spent',
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: COLOR_WHITE,
                    backgroundColor: COLOR_LIGHT_BLUE,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15),
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    _setTotalAmountSpent();
                    print("total amount spent: ${_currentTotalSpentDebug}\n");

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const MyHomePage();
                    }));
                  },
                  child: const Text("Punch!")),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
