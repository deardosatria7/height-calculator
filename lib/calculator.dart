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
      double _bmi = ((fatherHeight + motherHeight) / 2) + 7;
      return _bmi.toStringAsFixed(1);
    } else if (gender == Gender.female) {
      double _bmi = ((fatherHeight + motherHeight) / 2) - 7;
      return _bmi.toStringAsFixed(1);
    }
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
