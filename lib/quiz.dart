import 'package:flutter/material.dart';

import 'package:quizz_app/answer.dart';
import 'package:quizz_app/question.dart';

class Quizz extends StatelessWidget {
  final _questions;
  final _questionIndex;
  final _onAnswer;
  Quizz(this._questions, this._questionIndex, this._onAnswer);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(_questions[_questionIndex]["question"]),
        ...(_questions[_questionIndex]["answers"]
            .map((answer) => Answer(answer["text"], _onAnswer, answer["score"]))
            .toList()),
      ],
    );
  }
}
