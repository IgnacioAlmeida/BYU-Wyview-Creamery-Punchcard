import 'package:creamery/views/homepage.view.dart';
import 'package:flutter/material.dart';

class AmountSpentView extends StatelessWidget {
  const AmountSpentView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("This is where the logo will be"),
              Text("This is where the description will be"),
              Text("This is where the amount will be entered"),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MyHomePage();
            }));
          },
          tooltip: 'Punch!',
        ),
      ),
    );
  }
}
