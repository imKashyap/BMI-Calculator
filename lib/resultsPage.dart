import 'package:bmi_calculator/card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/inputPage.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {

  String condition;
  String bmi;
  String descr;
  ResultsPage(this.condition,this.bmi,this.descr);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Center(
                child: Text('Your Result',
                  style: kNumberTextStyle,),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(condition,
                  style: kConditionTextStyle,
                  textAlign: TextAlign.center,),
                  Text(bmi,
                    style: kNumberTextStyle,
                    textAlign: TextAlign.center,),
                  Text('Normal Range: \n 18.5-25.0',
                    style: kLabelTextStyle,
                    textAlign: TextAlign.center,),
                  Text(descr,
                    style: kLabelTextStyle.copyWith(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                    textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

