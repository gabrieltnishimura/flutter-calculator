import 'package:flutter/material.dart';

class CalculatorDisplay extends StatelessWidget {
  final String currentNumber;
  CalculatorDisplay(this.currentNumber);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black87,
        padding: EdgeInsets.only(top: 100.0, right: 20.0, bottom: 10.0),
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            this.currentNumber,
            style: TextStyle(
                fontSize: 100,
                color: Colors.white,
                fontWeight: FontWeight.w100),
          ),
        ));
  }
}
