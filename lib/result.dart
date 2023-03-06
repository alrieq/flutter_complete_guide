import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetQuestion;

  Result({this.resetQuestion});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ElevatedButton(
        onPressed: resetQuestion,
        child: Text('ResetIndex'),
      ),
      Center(child: Text('You did it!')),
    ]);
  }
}
