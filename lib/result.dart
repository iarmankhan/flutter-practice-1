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
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
                "Total score: " + totalScore.toString(),
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              onPressed: reset,
              child: Text("Play Again"),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onPrimary: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
