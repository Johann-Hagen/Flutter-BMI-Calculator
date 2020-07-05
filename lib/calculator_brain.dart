import 'dart:math';

import 'result_page.dart';

class CalculatorBrain {
  int height;
  int weight;
  double _bmi;
  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / (pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  BodyType getResult() {
    if (_bmi >= 25) {
      return BodyType.Overweight;
    } else if (_bmi > 18) {
      return BodyType.Normal;
    } else {
      return BodyType.Underweight;
    }
  }

  String getFeedback() {
    if (_bmi >= 25) {
      return 'You have a higher than normal  body weight. Try to exersize more.';
    } else if (_bmi > 18) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal  body weight. You can eat a bit more.';
    }
  }
}
