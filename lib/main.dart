import 'package:flutter/material.dart';
import 'package:quizz_app/questions.dart';

import 'package:quizz_app/quiz.dart';
import 'package:quizz_app/result.dart';

void main() {
  runApp(QuizzApp());
}

class QuizzApp extends StatefulWidget {
  @override
  _QuizzAppState createState() => _QuizzAppState();
}

class _QuizzAppState extends State<QuizzApp> {
  static const _questions = Questions.questionsList;
  var _questionIndex = 0;
  var _totalScore = 0;
  _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _onAnswer(_score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _totalScore += _score;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quizz App"),
        ),
        body: (_questionIndex < _questions.length)
            ? Quizz(_questions, _questionIndex, _onAnswer)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
