import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final List resultList;

  Result({this.resultList});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        width: double.infinity,
        child: Text('YOU DID IT!', textAlign: TextAlign.center),
      ),
      Container(
        width: double.infinity,
        child: Text(resultList.join("\n"), textAlign: TextAlign.center),
      )
    ]);
  }
}
