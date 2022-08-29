import 'dart:math';

class functionalityBrain {
  functionalityBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have HIGHER Body Mass Weight, Try Exercising Regularly';
    } else if (_bmi > 18.5) {
      return 'You have NORMAL Body Mass Weight, Good Job';
    } else {
      return 'You have Lower Body Mass Weight, Eat More';
    }
  }
}
