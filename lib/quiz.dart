// PACKAGE IMPORTS
import 'package:flutter/material.dart';
//CUSTOM IMPORTS
import 'queston.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function answerQuestion;

  Quiz({ @required this.questions, @required this.answerQuestion, 
    @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answerText'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList(),
      ],
    );
  }
}
