import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../bmi/constants.dart';
import '../bmi/ReusableCard.dart';
import '../bmi/input_page.dart';

class ResultsPage extends StatelessWidget {

  final String bmiResult;
  final String resultText;

  ResultsPage({this.bmiResult, this.resultText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                style: kBigTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText,
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(bmiResult, style: kBigTextStyle),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return InputPage();
                        }),
                      );
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          'Go Back',
                          style: kBigTextStyle,
                        ),
                      ),
                      color: kBottomColour,
                      margin: EdgeInsets.only(top: 10.0),
                      padding: EdgeInsets.only(bottom: 10),
                      width: double.infinity,
                      height: kBottomHeight,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
