import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final _totalScore;
  final _resetQuizz;
  get resultStatement {
    var statement;
    if (_totalScore < 15) {
      // ignore: unnecessary_brace_in_string_interps
      statement = "You are not that bad!\nYour score is just ${_totalScore}.";
    } else {
      statement = "You are a badass!\nYour score is $_totalScore";
    }
    return statement;
  }

  Result(this._totalScore, this._resetQuizz);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultStatement,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: _resetQuizz,
            child: Text(
              "Reset Quiz!",
            ),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
