import 'package:creamery/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

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
            Flexible(
              flex: 1,
              child: Image.asset(
                'assets/creamery_logo.svg.png',
                height: 140,
                width: 140,
              ),
            ),
            const SizedBox(height: 30),
            const Flexible(
              flex: 1,
              child: Text(
                "Scan the cashier's QR Code",
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),

            Flexible(
              flex: 3,
              child: MobileScanner(
                  allowDuplicates: false,
                  onDetect: (barcode, args) {
                    if (barcode.rawValue == null) {
                      debugPrint('Failed to scan Barcode');
                    } else {
                      final String code = barcode.rawValue!;
                      // if(code == "1234") {

                      // }
                      debugPrint('Barcode found! $code');
                    }
                  }),
            ),

            // const SizedBox(height: 50),

            // const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
