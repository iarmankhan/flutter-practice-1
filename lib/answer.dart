import 'dart:ffi';

import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final onPress;
  final String text;
  const AnswerButton(this.onPress, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: RaisedButton(
        color: Colors.deepOrange,
        textColor: Colors.white,
        child: Text(text),
        onPressed: onPress,
      ),
    );
  }
}
