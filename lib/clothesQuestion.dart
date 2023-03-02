import 'package:flutter/material.dart';

class ClothesQuestion extends StatelessWidget {

  var _questionContent;

  ClothesQuestion(this._questionContent);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
            _questionContent,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
            )
        )
    );
  }
}