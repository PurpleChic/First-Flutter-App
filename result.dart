import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const Result({ Key? key }) : super(key: key);
  final int resultScore;
  final Function() resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    //this is a getter method

    var resultText;

    if (resultScore >= 8) {
      resultText =
          'You scored a ' + resultScore.toString() + ' and that is awesome ;)';
    } else if (resultScore <= 15) {
      resultText =
          'You scored a ' + resultScore.toString() + '. You did well :)';
    } else if (resultScore <= 30) {
      resultText = 'You scored a ' +
          resultScore.toString() +
          '. Keep going you got this :()';
    } else {
      resultText = 'Out of bounds';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        ButtonTheme(
            minWidth: 1000.0,
            height: 600.0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.purple[200],
                onPrimary: Colors.orange[900],
              ),
              child: Text('Try again.'),
              //textColor:Colors.purple,
              onPressed: resetHandler,
            ))
      ]),
    );
  }
}
