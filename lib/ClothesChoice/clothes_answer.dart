import 'package:flutter/material.dart';

class ClothesAnswer extends StatelessWidget {
  String answerText;
  Function tapped;
  ClothesAnswer(this.tapped, this.answerText);
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 50,
      width: 150,
      margin: const EdgeInsets.only(top: 10.0),
      child: new ElevatedButton(
          child: Text(
            answerText,
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
          ),
          onPressed: tapped),
    );
  }
}
