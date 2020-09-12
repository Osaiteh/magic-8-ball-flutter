import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(Magic8Ball());

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  var ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton
              (child: Image.asset('images/ball$ballNumber.png'),
              onPressed: (
                  ) {
                setState(() {
                  ballNumber = Random().nextInt(4) + 1;
                });
                print(ballNumber);
              },),
          )
        ],
      ),
    );
  }
}

class Magic8Ball extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade800,
        appBar: AppBar(
          title: Text('Ask me Anything!'),
          backgroundColor: Colors.blue[900],
        ),
        body: SafeArea(
          child: Ball(),
        ),
      ),
    );
  }
}
