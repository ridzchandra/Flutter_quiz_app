import 'package:flutter/material.dart';

import 'package:quizz_app/question.dart';

void main() {
  runApp(QuizzApp());
}

class QuizzApp extends StatefulWidget {
  @override
  _QuizzAppState createState() => _QuizzAppState();
}

class _QuizzAppState extends State<QuizzApp> {
  var _questionIndex = 0;

  var _questions = [
    "What's your favorite color?",
    "What's your favorite animal?"
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quizz App"),
        ),
        body: Column(
          children: [
            Question(
              _questions[_questionIndex],
            ),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
