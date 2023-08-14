import 'dart:math';

class BMICalculation {
  BMICalculation({this.height, this.weight});
  int? height;
  int? weight;

  double? _bmi;

  String calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2);

    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getMessage() {
    if (_bmi! >= 25) {
      return 'You have a higher than normal body wight. Try to exercise more.';
    } else if (_bmi! > 18.5) {
      return 'You have a normal body weight. Good Job!';
    } else {
      return 'you have lower than normal weight. You need to eat more.';
    }
  }
}
