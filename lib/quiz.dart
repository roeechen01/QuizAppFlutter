import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final questions;
  final Function answerQuestion;

  Quiz(
      {@required this.questionIndex,
      @required this.questions,
      @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[questionIndex]['question'] as String),
      ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(() => answerQuestion(answer['score']), answer['text']);
      }).toList()
    ]);
  }
}
