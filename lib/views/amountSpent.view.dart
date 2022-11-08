import 'package:creamery/views/homepage.view.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class AmountSpentView extends StatelessWidget {
  const AmountSpentView({super.key});

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
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '\$',
                hintText: 'Total Amount Spent',
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
                      return const MyHomePage();
                    }));
                  },
                  child: const Text("Punch!")),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
