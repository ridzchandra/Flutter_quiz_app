import 'package:flutter/material.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var questionIndex = 0;

  var questions = [
    "What's your favourite color?",
    "What's your favourite animal?",
  ];

  void onAnswer() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            Row(
              children: [
                RaisedButton(child: Text("Answer 1"), onPressed: onAnswer),
                RaisedButton(child: Text("Answer 2"), onPressed: onAnswer),
                RaisedButton(child: Text("Answer 3"), onPressed: onAnswer),
              ],
            )
          ],
        ),
      ),
    );
  }
}
