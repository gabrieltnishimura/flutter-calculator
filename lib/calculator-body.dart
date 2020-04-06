import 'package:animation_test/buttons/calculator-side-row.dart';
import 'package:flutter/material.dart';

import 'buttons/calculator-bottom-row.dart';
import 'buttons/calculator-default-row.dart';

class CalculatorBody extends StatelessWidget {
  final Function onPressed;

  CalculatorBody(this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Row(children: [
      Column(children: [
        Row(
          children: [
            CalculatorDefaultRow(
                digits: ['AC', '7', '4', '1'], onPressed: this.onPressed),
            CalculatorDefaultRow(
                digits: ['+/-', '8', '5', '2'], onPressed: this.onPressed),
            CalculatorDefaultRow(
                digits: ['%', '9', '6', '3'], onPressed: this.onPressed),
          ],
        ),
        CalculatorBottomRow(digits: ['0', '.'], onPressed: this.onPressed),
      ]),
      CalculatorSideRow(
          digits: ['%', 'x', '-', '+', '='], onPressed: this.onPressed),
    ]));
  }
}
