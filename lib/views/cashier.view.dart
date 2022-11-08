import 'package:creamery/utils/constants.dart';
import 'package:flutter/material.dart';

import 'amountSpent.view.dart';

class CashierView extends StatelessWidget {
  const CashierView({super.key});

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
              "Let the cashier enter the access code",
              style: TextStyle(fontSize: 35),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Access Code',
                hintText: 'Enter Access Code',
              ),
            ),
            const SizedBox(height: 20),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const AmountSpentView();
                    }));
                  },
                  child: const Text("Next")),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
