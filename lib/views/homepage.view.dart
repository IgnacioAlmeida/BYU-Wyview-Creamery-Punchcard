import 'package:creamery/utils/constants.dart';
import 'package:flutter/material.dart';

import 'cashier.view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
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
              height: 160,
              width: 160,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: Value(value: 1),
                ),
                ValueCircle(
                  value: Value(value: 2),
                ),
                ValueCircle(
                  value: Value(value: 3),
                ),
                ValueCircle(
                  value: Value(value: 4),
                ),
                ValueCircle(
                  value: Value(value: 5),
                ),
                ValueCircle(
                  value: Value(value: 6),
                ),
                ValueCircle(
                  value: Value(value: 7),
                ),
                ValueCircle(
                  value: Value(value: 8),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: Value(value: 9),
                ),
                ValueCircle(
                  value: Value(value: 10),
                ),
                ValueCircle(
                  value: Value(value: 11),
                ),
                ValueCircle(
                  value: Value(value: 12),
                ),
                ValueCircle(
                  value: Value(value: 13),
                ),
                ValueCircle(
                  value: Value(value: 14),
                ),
                ValueCircle(
                  value: Value(value: 15),
                ),
                PinkCircle()
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: Value(value: 17),
                ),
                ValueCircle(
                  value: Value(value: 18),
                ),
                ValueCircle(
                  value: Value(value: 19),
                ),
                ValueCircle(
                  value: Value(value: 20),
                ),
                ValueCircle(
                  value: Value(value: 21),
                ),
                ValueCircle(
                  value: Value(value: 22),
                ),
                ValueCircle(
                  value: Value(value: 23),
                ),
                ValueCircle(
                  value: Value(value: 24),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: Value(value: 25),
                ),
                OrangeCircle(),
                ValueCircle(
                  value: Value(value: 27),
                ),
                ValueCircle(
                  value: Value(value: 28),
                ),
                ValueCircle(
                  value: Value(value: 29),
                ),
                ValueCircle(
                  value: Value(value: 30),
                ),
                ValueCircle(
                  value: Value(value: 31),
                ),
                ValueCircle(
                  value: Value(value: 32),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: Value(value: 33),
                ),
                ValueCircle(
                  value: Value(value: 34),
                ),
                ValueCircle(
                  value: Value(value: 35),
                ),
                ValueCircle(
                  value: Value(value: 36),
                ),
                ValueCircle(
                  value: Value(value: 37),
                ),
                ValueCircle(
                  value: Value(value: 38),
                ),
                ValueCircle(
                  value: Value(value: 39),
                ),
                ValueCircle(
                  value: Value(value: 40),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: Value(value: 41),
                ),
                ValueCircle(
                  value: Value(value: 42),
                ),
                ValueCircle(
                  value: Value(value: 43),
                ),
                ValueCircle(
                  value: Value(value: 44),
                ),
                ValueCircle(
                  value: Value(value: 45),
                ),
                ValueCircle(
                  value: Value(value: 46),
                ),
                ValueCircle(
                  value: Value(value: 47),
                ),
                ValueCircle(
                  value: Value(value: 48),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: Value(value: 49),
                ),
                ValueCircle(
                  value: Value(value: 50),
                ),
                ValueCircle(
                  value: Value(value: 51),
                ),
                ValueCircle(
                  value: Value(value: 52),
                ),
                ValueCircle(
                  value: Value(value: 53),
                ),
                ValueCircle(
                  value: Value(value: 54),
                ),
                ValueCircle(
                  value: Value(value: 55),
                ),
                ValueCircle(
                  value: Value(value: 56),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: Value(value: 57),
                ),
                ValueCircle(
                  value: Value(value: 58),
                ),
                ValueCircle(
                  value: Value(value: 59),
                ),
                ValueCircle(
                  value: Value(value: 60),
                ),
                ValueCircle(
                  value: Value(value: 61),
                ),
                ValueCircle(
                  value: Value(value: 62),
                ),
                ValueCircle(
                  value: Value(value: 63),
                ),
                BlueCircle()
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
            ElevatedButton(
                style: mainButton,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CashierView();
                  }));
                },
                child: const Text("Punch Card")),
          ],
        ),
      ),
    );
  }
}
