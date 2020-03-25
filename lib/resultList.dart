import 'package:bmi_calculator/resultModel.dart';

class ResultList{
  List<ResultModel> categories=[
    ResultModel('UNDERWEIGHT','Poor health Condition.\n Eat More! '),
    ResultModel('NORMAL','Good Physique.\n Keep up this Spirit!'),
    ResultModel('OVERWEIGHT','You need to plan\n your balanced diet.'),
    ResultModel('OBESE', 'It\'s high time you should \n consult a doctor.'),
  ];
}