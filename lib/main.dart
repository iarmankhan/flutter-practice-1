import 'package:f_1/quiz.dart';
import 'package:f_1/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  static const questions = [
    {
      'question': 'Whats your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 8}
      ]
    },
    {
      'question': 'Whats your favorite animal?',
      'answers': [
        {'text': 'Tiger', 'score': 20},
        {'text': 'Lion', 'score': 15},
        {'text': 'Elephant', 'score': 9},
        {'text': 'Zebra', 'score': 6}
      ]
    },
    {
      'question': 'Whats your favorite hobby?',
      'answers': [
        {'text': 'Reading', 'score': 10},
        {'text': 'Writing', 'score': 9},
        {'text': 'Dancing', 'score': 6},
        {'text': 'Learning', 'score': 5}
      ]
    },
  ];

  void _answerQuestion(int score) {
    if (_questionIndex < questions.length) {
      _totalScore += score;
      setState(() {
        _questionIndex += 1;
      });
    }
  }

  void reset() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                questions: questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(_totalScore, reset),
      ),
    );
  }
}
