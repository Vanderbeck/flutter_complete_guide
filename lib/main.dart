// PACKAGE IMPORTS
import 'package:flutter/material.dart';
// CUSTOM IMPORTS
import './queston.dart';
import './answer.dart';
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
  int _qIndex = 0;

  static const List<Map<String, Object>> question = [
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
  void _answerQuestion() {
    setState(() {
      // Calls Build method of widget again. Only draws the necessary parts
      _qIndex++;
      // if (_qIndex >= question.length) {
      //   _qIndex = 0;
      // }
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
        body: _qIndex < question.length
            ? Column(
                children: [
                  Question(question[_qIndex]['questionText']),
                  ...(question[_qIndex]['answerText'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList(),
                ],
              )
            : Center(child: Text('YOU DID IT!')),
      ),
    );
  }
}

//MAIN
void main() => runApp(MyApp());
