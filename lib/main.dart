import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';

import 'package:flutter_complete_guide/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 3},
        {'text': 'Black', 'score': 7},
        {'text': 'Orange', 'score': 5}
      ]
    },
    {
      'questionText': 'What is your favourite fruit?',
      'answers': [
        {'text': 'Apple', 'score': 10},
        {'text': 'Orange', 'score': 3},
        {'text': 'Banana', 'score': 7},
        {'text': 'Pear', 'score': 5}
      ]
    },
    {
      'questionText': 'What is your favourite country?',
      'answers': [
        {'text': 'Pak', 'score': 10},
        {'text': 'KSA', 'score': 3},
        {'text': 'Spain', 'score': 7},
        {'text': 'LA', 'score': 5}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('you have more questions');
    } else {
      print('questions finished');
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questionIndex: _questionIndex)
              : Result(_totalScore)),
    );
  }
}
