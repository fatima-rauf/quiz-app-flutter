import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function changeQuestionText;
  final String answerText;
  Answer(this.changeQuestionText,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        onPressed: changeQuestionText,
        color: Colors.blue.shade700,
        child: Text(answerText),
      ),
    );
  }
}
