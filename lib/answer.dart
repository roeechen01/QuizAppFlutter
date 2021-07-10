import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answer;

  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          child: Text(
            answer,
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.blue,
          onPressed: selectHandler),
    );
  }
}
