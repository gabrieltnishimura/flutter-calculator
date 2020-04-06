import 'package:flutter/material.dart';

import 'calculator-button.dart';

class CalculatorBottomRow extends StatelessWidget {
  final List<String> digits;
  final Function onPressed;

  CalculatorBottomRow({this.digits, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(201, 201, 201, 1),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width / 2,
              height: (MediaQuery.of(context).size.height - 230) / 5,
              child: CalculatorButton(
                  title: this.digits[0], execute: this.onPressed),
            ),
            Container(
              margin: EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width / 4,
              height: (MediaQuery.of(context).size.height - 230) / 5,
              child: CalculatorButton(
                  title: this.digits[1], execute: this.onPressed),
            ),
            // Container(
            //   margin: EdgeInsets.all(0),
            //   width: MediaQuery.of(context).size.width / 4,
            //   height: (MediaQuery.of(context).size.height - 230) / 5,
            //   child:
            //       CalculatorButton(title: this.digits[2], execute: this.onPressed),
            // ),
          ],
        ));
  }
}
