import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //CLASS VARS
  int _qIndex = 0;

  // METHODS
  void answerQuestion() {
    setState(() { // Calls Build method of widget again. Only draws the necessary parts
      _qIndex++;
      if (_qIndex > 1) {
        _qIndex = 0;
      }
    });
  }

  // BUILD
  @override //Widget deliberately overwrites the StatelessWidget build method
  Widget build(BuildContext context) //Required by StatelessWidget
  {
    List<String> question = [
      "What's your favourite colour?",
      "What's your favourite animal?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Text("Question 1: " + question[_qIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () {
                answerQuestion();
                print("Answer 1 Chosen!");
              },
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () {
                answerQuestion();
                print("Answer 2 Chosen!");
              },
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                //... Anaonymous Function calling names function
                answerQuestion();
                print("Answer 1 Chosen!");
              },
            ),
          ],
        ),
      ),
    );
  }
}

//MAIN
void main() => runApp(MyApp());
