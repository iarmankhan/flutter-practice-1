import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 30),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
        textAlign: TextAlign.center,
      ),
    );
  }
}
