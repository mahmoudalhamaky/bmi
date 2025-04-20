import 'dart:math';
class CalculatorBrain{

  late final int height;
  late final int weight;
  late double _bmi;

  CalculatorBrain({required this.height, required this.weight});

  String? CalculateBMI(){
     _bmi = weight / pow(height/100, 2) ;
    return _bmi.toStringAsFixed(1);
  }

  String?  GetResult(){
if (_bmi >= 25){return "overWeight";}
else if (_bmi>=15.5){return "normal";}
else {return "UnderWeight";}
  }

  String? GetInterpretation(){
    if (_bmi >= 25){return "its a high body weight";}
    else if (_bmi>=15.5){return "you have a normal body weight, Good Job";}
    else {return "lower body weight,eat more";}
  }

}