import 'package:flutter/material.dart';

class ClothesAnswer extends StatelessWidget{

  String answerText;
  var tapped;

  ClothesAnswer(this.tapped, this.answerText);

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      child: Text(answerText, style: TextStyle(color: Colors.red),),
      onPressed: tapped,
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
    );
  }
}