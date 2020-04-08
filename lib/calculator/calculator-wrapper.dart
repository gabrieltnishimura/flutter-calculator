import 'package:animation_test/calculator/calculator-body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'display/calculator-display.dart';
import 'services/calculator.service.dart';

class CalculatorWrapper extends StatefulWidget {
  @override
  _CalculatorWrapperState createState() => _CalculatorWrapperState();
}

class _CalculatorWrapperState extends State<CalculatorWrapper> {
  String currentNumber;

  @override
  void initState() {
    this.currentNumber = '0';
    super.initState();
  }

  void pressButton(String value) {
    if (value != null) {
      setState(() {
        currentNumber =
            CalculatorService.appendCharacter(this.currentNumber, value);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        CalculatorDisplay(this.currentNumber),
        CalculatorBody(this.pressButton),
      ],
    ));
  }
}
