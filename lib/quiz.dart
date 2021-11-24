import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

class quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final Function answerQuestion;
  final int questionIndex;

  quiz(
      {@required this.answerQuestion,
      @required this.question,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        questions(question[questionIndex]['questionText'] as String ),
        ...(question[questionIndex]['answer'] as List<Map<String, Object>>).map((answer) {
          return Answers(() => answerQuestion(answer['score']), answer['text'] as String);
        }).toList(),
      ],
    );
  }
}
