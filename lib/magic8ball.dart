import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue,
        ),
        body: Magic8BallPage(),
      ),
    ),
  );
}

class Magic8BallPage extends StatefulWidget {
  @override
  _Magic8BallPage createState() => _Magic8BallPage();
}

class _Magic8BallPage extends State<Magic8BallPage> {
  int ballNumber = 1;

  void randomBall(){
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
                randomBall();
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}


