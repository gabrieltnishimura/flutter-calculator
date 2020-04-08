import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String title;
  final Function execute;
  final bool white;

  CalculatorButton({this.title, this.execute, this.white});

  void runFunction() {
    if (this.execute != null && this.title != null) {
      this.execute(this.title);
    }
  }

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
        borderSide: BorderSide(width: 0.7),
        onPressed: runFunction,
        child: Container(
            child: Text(
          title,
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w100,
              color: this.white == true ? Colors.white : Colors.black),
        )));
  }
}
