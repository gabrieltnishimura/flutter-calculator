import 'package:flutter/material.dart';

import 'calculator-button.dart';

class CalculatorSideRow extends StatelessWidget {
  final List<String> digits;
  final Function onPressed;

  CalculatorSideRow({this.digits, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.orangeAccent,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width / 4,
              height: (MediaQuery.of(context).size.height - 230) / 5,
              child: CalculatorButton(
                title: this.digits[0],
                execute: onPressed,
                white: true,
              ),
            ),
            Container(
              margin: EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width / 4,
              height: (MediaQuery.of(context).size.height - 230) / 5,
              child: CalculatorButton(
                title: this.digits[1],
                execute: onPressed,
                white: true,
              ),
            ),
            Container(
              margin: EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width / 4,
              height: (MediaQuery.of(context).size.height - 230) / 5,
              child: CalculatorButton(
                title: this.digits[2],
                execute: onPressed,
                white: true,
              ),
            ),
            Container(
              margin: EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width / 4,
              height: (MediaQuery.of(context).size.height - 230) / 5,
              child: CalculatorButton(
                title: this.digits[3],
                execute: onPressed,
                white: true,
              ),
            ),
            Container(
              margin: EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width / 4,
              height: (MediaQuery.of(context).size.height - 230) / 5,
              child: CalculatorButton(
                title: this.digits[4],
                execute: onPressed,
                white: true,
              ),
            ),
          ],
        ));
  }
}
