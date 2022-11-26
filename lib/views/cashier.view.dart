// ignore_for_file: unnecessary_const

import 'package:creamery/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import 'amountSpent.view.dart';

class CashierView extends StatefulWidget {
  const CashierView({super.key});

  @override
  State<CashierView> createState() => _CashierViewState();
}

class _CashierViewState extends State<CashierView> {
  bool _screenOpened = false;

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
                  allowDuplicates: true,
                  onDetect: (barcode, args) {
                    if (!_screenOpened) {
                      final String code = barcode.rawValue ?? "---";
                      _screenOpened = true;
                      if (code == "cougar") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AmountSpentView(
                                  screenClosed: _screenWasClosed),
                            ));
                      } else {
                        return const SimpleDialog(children: <Widget>[
                          const Center(
                              child: const Text(
                                  'Wrong QR Code. Please try with a different one'))
                        ]);
                      }
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }

  void _screenWasClosed() {
    _screenOpened = false;
  }
}
