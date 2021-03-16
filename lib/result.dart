import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 5) {
      resultText = ('You are awesome');
    } else if (resultScore <= 15) {
      resultText = ('You are average');
    } else {
      resultText = ('you are so bad');
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
      ),
    );
  }
}
