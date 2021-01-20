import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function setHandler;
  final String answerText;

  Answer(this.setHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        textColor: Colors.white,
        color: Colors.blueAccent,
        onPressed: setHandler,
      ),
    );
  }
}
