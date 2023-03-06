import 'package:flutter/material.dart';

import './Quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  void _resetQuestion() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color',
      'answerText': [
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 3},
        {'text': 'Red', 'score': 1},
        {'text': 'Green', 'score': 5}
      ]
    },
    {
      'questionText': 'What\'s your favorite animel',
      'answerText': [
        {'text': 'Dog', 'score': 3},
        {'text': 'Cat', 'score': 1},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Tiger', 'score': 7}
      ]
    },
    {
      'questionText': 'Who\'s your favorite player',
      'answerText': [
        {'text': 'Mohammed Noor', 'score': 0},
        {'text': 'Messi', 'score': 1},
        {'text': 'Ronaldo', 'score': 5},
        {'text': 'R9', 'score': 8}
      ]
    },
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(_resetQuestion, _totalScore),
      ),
    );
  }
}
