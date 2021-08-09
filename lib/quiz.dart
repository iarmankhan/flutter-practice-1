import 'package:f_1/answer.dart';
import 'package:f_1/question.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final answerQuestion;

  Quiz({
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Question(questions[questionIndex]['question'] as String),
          ...(questions[questionIndex]['answers'] as List<String>)
              .map((answer) => AnswerButton(answerQuestion, answer))
              .toList(),
        ],
      ),
    );
  }
}
