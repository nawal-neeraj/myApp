import 'package:flutter/material.dart';
import './Questions.dart';

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
  void questionAns() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  qestionAndP(questions) {
    print(_questionIndex);
    setState(() {
      if (_questionIndex <= questions.length - questions.length) {
        _questionIndex = 0;
      } else {
        _questionIndex = _questionIndex - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your fav color?',
      'what\'s your fav animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(
          children: [
            Questions(questions[_questionIndex]),
            RaisedButton(
              child: Text('Next'),
              onPressed: questionAns,
            ),
            RaisedButton(
              child: Text('Previous'),
              onPressed: () =>  qestionAndP(questions),
            ),
            // RaisedButton(
            //   child: Text('Test2'),
            //   onPressed: () => {print('Answer3')},
            // ),
          ],
        ),
      ),
    );
  }
}
