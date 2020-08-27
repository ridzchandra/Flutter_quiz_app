import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final _answerText;
  final _answerFunction;
  Answer(this._answerText, this._answerFunction);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          _answerText,
          textAlign: TextAlign.center,
        ),
        textColor: Colors.white,
        onPressed: _answerFunction,
      ),
    );
  }
}
