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
          children: const [
            Text("This is where the logo will be"),
            Text("This is where the description will be"),
            Text("This is where the code will be entered"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AmountSpentView();
          }));
        },
        tooltip: 'Punch Card',
      ),
    );
  }
}
