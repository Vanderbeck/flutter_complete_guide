import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectAnswer;
  final String answerText;

  Answer(this.selectAnswer, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectAnswer,
      ),
    );
  }
}
