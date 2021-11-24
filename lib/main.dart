import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(myApp());
// }

void main() => runApp(myApp());

class myApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<myApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _question = const [
    {
      'questionText': 'what\'s your fav color?',
      'answer': [{'text':'Black', 'score':4}, {'text':'Red', 'score':2}, {'text':'Green', 'score':5}, {'text':'Blue','score':8}]
    },
    {
      'questionText': 'what\'s your fav animal?',
      'answer': [{'text':'Tiger', 'score':5}, {'text':'Rabbite', 'score':4}, {'text':'Dog', 'score':8}, {'text':'Lion', 'score':7}]
    },
    {
      'questionText': 'what\'s your fav Programming Language?',
      'answer': [{'text':'C', 'score':4}, {'text':'C++', 'score':5}, {'text':'JAVA','score':6}, {'text':'JAVASCRIPT', 'score':7}]
    },
  ];
  void _questionAns(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: 
        _questionIndex < _question.length
            ? 
            quiz(answerQuestion: _questionAns,  question: _question, questionIndex: _questionIndex )
            : result(_totalScore, _resetQuiz),
      ),
    );
  }
}
