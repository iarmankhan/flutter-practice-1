import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final onPress;
  final String text;
  const AnswerButton(this.onPress, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 20, right: 20),
      child: ElevatedButton(
        child: Text(text),
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          onPrimary: Colors.white,
        ),
      ),
    );
  }
}
