import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String text;

  Question(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 28),
        ),
        margin: EdgeInsets.all(10),
        width: double.infinity);
  }
}
