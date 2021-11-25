import 'package:flutter/material.dart';

class questions extends StatelessWidget {
  final String questionText;

  questions(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 22),
        textAlign: TextAlign.center,
      ),
    );
  }
}
