import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalScore;
  final reset;

  Result(this.totalScore, this.reset);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Yay, your total score is " + totalScore.toString(),
              style: TextStyle(fontSize: 25),
            ),
            RaisedButton(
              onPressed: reset,
              child: Text("Play Again"),
              color: Colors.blue,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
