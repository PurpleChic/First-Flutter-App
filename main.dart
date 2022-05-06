import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/result.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is your favourite color',
      'answers': [
        {'text': 'Purple', 'score': 3},
        {'text': 'Orange', 'score': 5},
        {'text': 'Brown', 'score': 7},
        {'text': 'Red', 'score': 2},
        {'text': 'Silver', 'score': 0},
      ],
    },
    {
      'questionText': 'What is your favourite animal',
      'answers': [
        {'text': 'Zebra', 'score': 9},
        {'text': 'Dolphin', 'score': 1},
        {'text': 'Whale', 'score': 3},
        {'text': 'Lion', 'score': 9},
        {'text': 'Cow', 'score': 15}
      ],
    },
    {
      'questionText': 'Who is your favourite person',
      'answers': [
        {'text': 'Mel', 'score': 11},
        {'text': 'Sarah', 'score': 7},
        {'text': 'Kevin', 'score': 13},
        {'text': 'Max', 'score': 15}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetApp() {
    // this function resets the values of the app
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('We have NO MORE questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetApp),
      ),
    );
  }
}
