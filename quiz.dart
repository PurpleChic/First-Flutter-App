import 'package:flutter/material.dart';

import './question.dart'; //refer to the name of the FILES and not the class in the import statement
import './answer.dart';

class Quiz extends StatelessWidget {
  //const Quiz({Key? key}) : super(key: key);
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  //final Function(Object?) answerQuestion;

  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
          //()=>answerQuestion(answer['score'])
          //answer['text']
        }).toList()
      ],
    );
  }
}
