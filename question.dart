import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //final String questionText;
  final questionText;

  Question(this.questionText); //this is a constructor

  //const Question({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:
          double.infinity, //double dot infinity is the full width of the device
      margin: EdgeInsets.all(10), //10 is number of pixels
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
