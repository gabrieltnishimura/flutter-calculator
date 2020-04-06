import 'package:animation_test/calculator-body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'display/calculator-display.dart';

class CalculatorWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;

    return Container(
        width: sizeX,
        height: sizeY,
        child: Column(
          children: [
            CalculatorDisplay(),
            CalculatorBody(),
          ],
        ));
  }
}
