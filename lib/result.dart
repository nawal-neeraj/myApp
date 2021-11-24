import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandle;

  result(this.resultScore, this.resetHandle);

  String get resultAns {
    String Results;

    if (resultScore <= 5) {
      Results = "Yea its ok";
    } else if (resultScore <= 8) {
      Results = "Thats Good";
    } else {
      Results = "Very Good";
    }
    return Results;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultAns,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(resultScore.toString()),
          FlatButton(onPressed: resetHandle, child: Text('Restart'))
        ],
      ),
    );
  }
}
