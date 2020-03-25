import 'dart:math';
import 'package:bmi_calculator/resultList.dart';
import 'package:bmi_calculator/resultModel.dart';

class Calculator {
  ResultList resultList = ResultList();
  double _bmi;
  ResultModel findCategory(int height, int weight) {
    _bmi = weight / pow(height / 100, 2);
    if (_bmi < 18.5)
      return resultList.categories[0];
    else if (_bmi < 25)
      return resultList.categories[1];
    else if (_bmi < 30)
      return resultList.categories[2];
    else
      return resultList.categories[3];
  }

  String findBmi(int height, int weight) {
    return _bmi.toStringAsFixed(1);
  }
}
