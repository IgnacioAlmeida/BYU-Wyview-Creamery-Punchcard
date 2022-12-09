import 'package:creamery/views/cashier.view.dart';
import 'package:creamery/views/homepage.view.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/constants.dart';

class AmountSpentView extends StatefulWidget {
  final Function() screenClosed;
  const AmountSpentView({Key? key, required this.screenClosed})
      : super(key: key);
  @override
  State<AmountSpentView> createState() => _AmountSpentViewState();
}

class _AmountSpentViewState extends State<AmountSpentView> {
  TextEditingController amountSpent = TextEditingController();
  int _currentAmountSpent = 0;
  int _currentTotalSpentDebug = 0;
  bool wonFirstReward = false;
  bool wonSecondReward = false;
  bool wonThirdReward = false;

  Future<List<String>> _getTotalAmountSpent() async {
    final prefs = await SharedPreferences.getInstance();
    final totalAmountSpent = prefs.getStringList('totalAmountSpent');
    if (totalAmountSpent == null) {
      var emptyList = <String>[];
      emptyList.add("0");
      return emptyList;
    }
    return totalAmountSpent;
  }

  Future<void> _setTotalAmountSpent() async {
    final prefs = await SharedPreferences.getInstance();
    _currentAmountSpent = int.parse(amountSpent.text);
    List<String> allPunchesDone = await _getTotalAmountSpent();
    int allPunchesDoneSize = allPunchesDone.length;
    int previousPunchDone = int.parse(allPunchesDone[allPunchesDoneSize - 1]);
    int totalSpent = _currentAmountSpent + previousPunchDone;
    if (totalSpent >= 16 && totalSpent < 26 && previousPunchDone < 16) {
      wonFirstReward = true;
    }
    if (totalSpent >= 26 && totalSpent < 64 && previousPunchDone < 26) {
      wonSecondReward = true;
    }
    if (totalSpent > 64) {
      totalSpent = 64;
      if (previousPunchDone < 64) {
        wonThirdReward = true;
      }
    }
    allPunchesDone.add(totalSpent.toString());
    await prefs.setStringList('totalAmountSpent', allPunchesDone);
    _currentTotalSpentDebug = totalSpent;
  }

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
                    return const CashierView();
                  })))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const SizedBox(height: 20),
            Image.asset(
              'assets/creamery_logo.svg.png',
              height: 140,
              width: 140,
            ),
            // const SizedBox(height: 30),
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
            const SizedBox(height: 10),
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
                    widget.screenClosed();
                    Navigator.pop(context);
                    _setTotalAmountSpent();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      if (wonFirstReward) {
                        wonFirstReward = false;
                        return AlertDialog(
                          title: const Text(
                              'Congratulations! You just earned a Child Cone!'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyHomePage()),
                                );
                              },
                              child: const Text('Nice!'),
                            ),
                          ],
                        );
                      }
                      if (wonSecondReward) {
                        wonSecondReward = false;
                        return AlertDialog(
                          title: const Text(
                              'Congratulations! You just earned Half a Gallon of Milk!'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyHomePage()),
                                );
                              },
                              child: const Text('Nice!'),
                            ),
                          ],
                        );
                      }
                      if (wonThirdReward) {
                        wonThirdReward = false;
                        return AlertDialog(
                          title: const Text(
                              'Congratulations! You just earned a Single Cone!'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyHomePage()),
                                );
                              },
                              child: const Text('Nice!'),
                            ),
                          ],
                        );
                      }
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
