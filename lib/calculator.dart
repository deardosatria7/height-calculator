import 'dart:math';
import 'constants.dart';

class Calculator {
  Calculator(
      {required this.fatherHeight,
      required this.motherHeight,
      required this.gender});

  final double fatherHeight;
  final double motherHeight;
  final Gender gender;

  double _bmi = 0.0;

  String calculateBMI() {
    if (gender == Gender.male) {
      double _bmi = ((fatherHeight + motherHeight) / 2) + 7.6;
      return _bmi.toStringAsFixed(1);
    } else if (gender == Gender.female) {
      double _bmi = ((fatherHeight + motherHeight) / 2) - 7.6;
      return _bmi.toStringAsFixed(1);
    }
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    return "Your result is (in cm): ";
  }

  String getInterpretation() {
    if (gender == Gender.male) {
      return 'Height prediction for male children based on parents height is shown above';
    } else if (gender == Gender.female) {
      return 'Height prediction for female children based on parents height is shown above';
    } else {
      return '';
    }
  }
}
