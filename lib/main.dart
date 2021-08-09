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
  static const questions = [
    {
      'question': 'Whats your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'question': 'Whats your favorite animal?',
      'answers': ['Tiger', 'Lion', 'Elephant', 'Zebra']
    },
    {
      'question': 'Whats your favorite hobby?',
      'answers': ['Reading', 'Writing', 'Dancing', 'Learning']
    },
  ];

  void _answerQuestion() {
    if (_questionIndex < questions.length) {
      setState(() {
        _questionIndex += 1;
      });
    }
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
            : Result(),
      ),
    );
  }
}
