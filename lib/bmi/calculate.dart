import 'dart:math';

class Calculate {

  Calculate({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi ;

  String resultBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if(_bmi >= 25) {
      return 'Over!!!!!';
    } else if (_bmi <= 18.5) {
      return 'Too thin';
    } else {
      return 'Normal';
    }
  }
}


