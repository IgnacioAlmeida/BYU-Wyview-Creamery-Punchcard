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
  var _allPunchesDone = <String>[];

  @override
  void initState() {
    super.initState();
    _setTotalAmountSpent();
  }

  Future<void> _setTotalAmountSpent() async {
    final prefs = await SharedPreferences.getInstance();
    var totalAmountSpent = prefs.getStringList('totalAmountSpent');
    int size = 0;
    if (totalAmountSpent != null) {
      size = totalAmountSpent.length;
      setState(() =>
          _currentTotalAmountSpent = int.parse(totalAmountSpent[size - 1]));
      _allPunchesDone = totalAmountSpent;
    } else {
      setState(() {
        _currentTotalAmountSpent = 0;
        _allPunchesDone.add("0");
      });
    }
  }

  Future<void> _resetTotalAmount() async {
    final prefs = await SharedPreferences.getInstance();
    var reseted = <String>[];
    reseted.add("0");
    await prefs.setStringList('totalAmountSpent', reseted);
    setState(() {});
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Are you sure you want to reset your punchcard?'),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(
                    'This action will erase all your progress in the punchcard program'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Confirm'),
              onPressed: () {
                _resetTotalAmount();
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MyHomePage();
                }));
              },
            ),
          ],
        );
      },
    );
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: const Value(value: 1),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 2),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 3),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 4),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 5),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 6),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 7),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 8),
                  totalAmountSpent: _allPunchesDone,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: const Value(value: 9),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 10),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 11),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 12),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 13),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 14),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 15),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 16),
                  totalAmountSpent: _allPunchesDone,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: const Value(value: 17),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 18),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 19),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 20),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 21),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 22),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 23),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 24),
                  totalAmountSpent: _allPunchesDone,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: const Value(value: 25),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 26),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 27),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 28),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 29),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 30),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 31),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 32),
                  totalAmountSpent: _allPunchesDone,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: const Value(value: 33),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 34),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 35),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 36),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 37),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 38),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 39),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 40),
                  totalAmountSpent: _allPunchesDone,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: const Value(value: 41),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 42),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 43),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 44),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 45),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 46),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 47),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 48),
                  totalAmountSpent: _allPunchesDone,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: const Value(value: 49),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 50),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 51),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 52),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 53),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 54),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 55),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 56),
                  totalAmountSpent: _allPunchesDone,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ValueCircle(
                  value: const Value(value: 57),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 58),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 59),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 60),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 61),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 62),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 63),
                  totalAmountSpent: _allPunchesDone,
                ),
                ValueCircle(
                  value: const Value(value: 64),
                  totalAmountSpent: _allPunchesDone,
                ),
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
                style: secondaryButton,
                onPressed: () {
                  _showMyDialog();
                  // _resetTotalAmount();
                  // Navigator.pop(context);
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return const MyHomePage();
                  // }));
                },
                child: const Text("Reset Card")),
          ],
        ),
      ),
    );
  }
}
