// PACKAGE IMPORTS
import 'package:flutter/material.dart';
// CUSTOM IMPORTS
import './quiz.dart';
import './result.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //CLASS VARS
  int _questionIndex = 0;

  static const List<Map<String, Object>> _questions = [
    {
      'questionText': "What's your favourite colour?",
      'answerText': ['Black', 'Red', 'Blue', 'Green']
    },
    {
      'questionText': "What's your favourite animal?",
      'answerText': ['Rabbit', 'Snake', 'Elephant', 'Lion']
    },
    {
      'questionText': "Who's the man?",
      'answerText': ['You da man!', 'Shes da man!', 'We da man', 'Udemy', 'Max']
    }
  ];

  // METHODS
  List _quizResult = [];
  void _answerQuestion(String ans) {
    setState(() {
      // Calls Build method of widget again. Only draws the necessary parts
      _quizResult.add(ans);
      _questionIndex++;
    });
  }

  // BUILD
  @override //Widget deliberately overwrites the StatelessWidget build method
  Widget build(BuildContext context) //Required by StatelessWidget
  {
    //ALTERNATE 'children' LIST GENERATOR
    // List<Widget> questionChild = [];
    // questionChild.add( Question(question[_qIndex]['questionText']) );
    // for (String ans in question[_qIndex]['answerText'])
    // {
    //   questionChild.add( Answer(_answerQuestion, ans) );
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            //if
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            //else
            : Result(
                resultList: _quizResult,
              ),
      ),
    );
  }
}

//MAIN
void main() => runApp(MyApp());
