import 'package:flutter/material.dart';

const COLOR_PINK = Color.fromRGBO(224, 114, 210, 1.0);
const COLOR_BLUE = Color.fromRGBO(4, 124, 196, 1.0);
const COLOR_ORGANE = Color.fromRGBO(247, 136, 84, 1.0);
const COLOR_WHITE = Color.fromRGBO(249, 249, 249, 1.0);
const COLOR_LIGHT_BLUE = Color.fromRGBO(64, 128, 200, 1.0);

const double CIRCLE_WIDTH = 40.0;
const double CIRCLE_HEIGHT = 40.0;

const IconData ICON_STAR = IconData(0xe5f9, fontFamily: 'MaterialIcons');

class PinkCircle extends StatelessWidget {
  const PinkCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: CIRCLE_WIDTH,
      height: CIRCLE_HEIGHT,
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        color: COLOR_PINK,
        shape: BoxShape.circle,
      ),
    );
  }
}

class OrangeCircle extends StatelessWidget {
  const OrangeCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: CIRCLE_WIDTH,
      height: CIRCLE_HEIGHT,
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        color: COLOR_ORGANE,
        shape: BoxShape.circle,
      ),
    );
  }
}

class BlueCircle extends StatelessWidget {
  const BlueCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: CIRCLE_WIDTH,
      height: CIRCLE_HEIGHT,
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        color: COLOR_BLUE,
        shape: BoxShape.circle,
      ),
    );
  }
}

class Value {
  const Value({required this.value});

  final int value;
}

class ValueCircle extends StatefulWidget {
  ValueCircle({required this.value, required this.totalAmountSpent})
      : super(key: ObjectKey(value));

  final Value value;
  final int totalAmountSpent;

  @override
  State<ValueCircle> createState() => _ValueCircleState();
}

class _ValueCircleState extends State<ValueCircle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: CIRCLE_WIDTH,
      height: CIRCLE_HEIGHT,
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        border: Border.all(color: COLOR_LIGHT_BLUE, width: 1.0),
        shape: BoxShape.circle,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          widget.value.value == widget.totalAmountSpent
              ? Icon(
                  Icons.star,
                  color: Colors.yellow.shade600,
                  size: 35,
                )
              : Text("\$${widget.value.value}"),
        ],
      ),
    );
  }
}

final ButtonStyle mainButton = ElevatedButton.styleFrom(
  foregroundColor: COLOR_WHITE,
  backgroundColor: COLOR_LIGHT_BLUE,
  padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
  textStyle: const TextStyle(fontSize: 15),
);

const PinkPriceText = Text(
  "Child Cone",
  textAlign: TextAlign.center,
);

const OrangePriceText = Text(
  "Single Cone",
  textAlign: TextAlign.center,
);

const BluePriceText = Text(
  "Half Gallon",
  textAlign: TextAlign.center,
);
