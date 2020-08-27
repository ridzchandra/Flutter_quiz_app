import 'package:flutter/material.dart';
import 'package:quizz_app/answer.dart';

import 'package:quizz_app/question.dart';

void main() {
  runApp(QuizzApp());
}

class QuizzApp extends StatefulWidget {
  @override
  _QuizzAppState createState() => _QuizzAppState();
}

class _QuizzAppState extends State<QuizzApp> {
  static const _questions = [
    {
      "question": "What's your favorite color?",
      "answers": ["blue", "black", "brown", "white"],
    },
    {
      "question": "What's your favorite animal?",
      "answers": ["tiger", "rat", "ox"],
    },
    {
      "question": "What's your favorite country?",
      "answers": ["U.S.A", "P.R.C"],
    },
  ];

  var _questionIndex = 0;
  void _onAnswer() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quizz App"),
        ),
        body: Column(
          children: [
            Question(_questions[_questionIndex]["question"]),
            ...(_questions[_questionIndex]["answers"] as List<String>)
                .map((answer) => Answer(answer, _onAnswer))
                .toList(),
          ],
        ),
      ),
    );
  }
}
