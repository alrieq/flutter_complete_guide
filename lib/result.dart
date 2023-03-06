import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetQuestion;
  final int totalScore;
  Result(
    this.resetQuestion,
    this.totalScore,
  );

  String get textPhrase {
    String textSentence;
    if (totalScore < 5) {
      textSentence = 'You\'re the best humen ever!';
    } else if (totalScore <= 9) {
      textSentence = 'You\'re a good person';
    } else if (totalScore <= 13) {
      textSentence = 'You\'re no that bad';
    } else {
      textSentence = 'You\'re the worst';
    }
    return textSentence;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          textPhrase,
          style: TextStyle(
              fontSize: 36, fontWeight: FontWeight.bold, color: Colors.amber),
          textAlign: TextAlign.center,
        ),
        TextButton(
          onPressed: resetQuestion,
          child: Text('ResetIndex'),
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.blue),
          ),
        ),
      ],
    ));
  }
}
