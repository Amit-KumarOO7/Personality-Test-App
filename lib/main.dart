import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print('Answer choosen');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality test'),
        ),
        body: Column(
          children: [
            Question('The question'),
            RaisedButton(
              child: Text('Answer1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer3'),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
