import 'package:math_expressions/math_expressions.dart';

class CalculatorService {
  static String appendCharacter(String before, String after) {
    switch (after) {
      case 'AC':
        return '';
      case '+/-':
        return before.indexOf('-') == 0
            ? before.replaceFirst('-', '')
            : '-' + before;
      case '=':
        double result =
            Parser().parse(before).evaluate(EvaluationType.REAL, null);
        return result
            .toStringAsFixed(result.truncateToDouble() == result ? 0 : 1);
      default:
        return before + after;
    }
  }
}
