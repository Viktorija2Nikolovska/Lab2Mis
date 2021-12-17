import 'package:flutter/material.dart';

import 'ClothesChoice/clothes_questions.dart';
import 'ClothesChoice/clothes_answer.dart';
import 'dart:convert';
import 'dart:core';

// опчињата да бидат со зелена позадина и текстот да биде црвен,
// додека текстот на прашањето да биде син.
// Направете копчињата да бидат разделени
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questions = [
    {
      "question": "Select top",
      'answer': [
        'Shirt',
        'T-Shirt',
        'Jacket',
        'Jumper'
      ]
    },
    {
      "question": "Select bottom",
      'answer': [
        'Jeans',
        'Pants',
        'Skirt'
      ]
    },
    {
      "question": "Select shoes",
      'answer': [
        'Sneakers',
        'Boots',
        'Heels'
      ]
    }
  ];
  var _questionIndex = 0;

  void _iWasTapped() {
    if (_questionIndex == questions.length - 1) {
      _questionIndex = -1;
      return;
    }
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Choose clothes",
          ),
        ),
        body: Column(
          children: [
            ClothesQuestion(questions[_questionIndex]['question']),
            ...(questions[_questionIndex]['answer'] as List<String>).map((answer) {
              return ClothesAnswer(_iWasTapped, answer);
            }),
          ],
        ),
      ),
    );
  }
}
