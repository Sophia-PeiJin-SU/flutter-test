import 'package:flutter/material.dart';
import '../bmi/constants.dart';



class CardContent extends StatelessWidget {
  final String showText;
  final IconData showIcon;
  CardContent({@required this.showIcon, @required this.showText});

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          showIcon,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          showText,
          style: kTextStyle,
        ),
      ],
    );
  }
}