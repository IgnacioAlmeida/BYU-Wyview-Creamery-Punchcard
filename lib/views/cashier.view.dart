// ignore_for_file: unnecessary_const

import 'package:creamery/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import 'amountSpent.view.dart';
import 'homepage.view.dart';

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
      appBar: AppBar(
          // preferredSize: Size.fromHeight(30.0), // here the desired height
          backgroundColor: COLOR_BLUE,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const MyHomePage();
                  })))),
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
            const SizedBox(height: 15),
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
            const SizedBox(height: 5),
            Flexible(
              child: ElevatedButton(
                  style: mainButton,
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return AmountSpentView(screenClosed: _screenWasClosed);
                    }));
                  },
                  child: const Text("Next")),
            )
          ],
        ),
      ),
    );
  }

  void _screenWasClosed() {
    _screenOpened = false;
  }
}
