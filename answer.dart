import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  final Function() selectHandler;
  final answerText; //check here. final String answerText

  Answer(this.selectHandler, this.answerText); //this is a constructor

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.orange, //background
              onPrimary: Colors.white), //foreground
          //color: Colors.orange,
          //child: Text('First option here'),
          child: Text(answerText),
          //onPressed: () => answerQuestion,
          onPressed: selectHandler,
        ));
  }
}
