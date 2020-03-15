import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final List resultList;
  final Function resetHandler;

  Result({this.resultList, this.resetHandler});

  String get resultPhrase {
    String resultText = "You Did it!";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        width: double.infinity,
        child: Text(
          resultPhrase,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        width: double.infinity,
        child: Text(resultList.join("\n"), textAlign: TextAlign.center),
      ),
      FlatButton(
        child: Text('Restart Quiz!'),
        onPressed: resetHandler,
        textColor: Colors.blue,
      )
    ]);
  }
}
