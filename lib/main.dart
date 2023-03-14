import 'package:flutter/material.dart';
import './clothesQuestion.dart';
import './clothesAnswer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState(){
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  void _clickMe(){
    setState(() {
      _questionIndex += 1;
    });
  }

  var questions = [
    {
      "question": "Select pants:",
      "answer": ['Jeans', 'Sweatpants', 'Shorts', 'Cargo'],
    },
    {
      "question": "Select shirt:",
      "answer": ['T-Shirt', 'Sweatshirt', 'Hoodie', 'Polo', 'Tank Top', 'Turtleneck', 'Dress Shirt'],
    },
    {
      "question": "Select coat:",
      "answer": ['Parka', 'Tuxedo', 'Trench', 'Blazer', 'Bomber', 'Windbreaker'],
    },
    {
      "question": "Select shoes:",
      "answer": ['Sneakers', 'Boots', 'Slippers', 'Dress shoes'],
    },
  ];
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 2',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Clothing Store'),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            ClothesQuestion(questions[_questionIndex]['question']),
            ...(questions[_questionIndex]['answer'] as List<String>).map((answer) {
              return ClothesAnswer(_clickMe, answer);
            }),
          ],
        ),
      ),
    );
  }
}