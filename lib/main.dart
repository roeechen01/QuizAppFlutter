import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

const SERVER_IP = "2.3.4.5";
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  final questions = [
    {
      'question': 'What\'s your favorite color?',
      'answers': ['Green', 'Blue', 'Red', 'White']
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': ['Elephant', 'Dog', 'Meerkat', 'Rhino']
    },
    {
      'question': 'What\'s your favorite album?',
      'answers': ['Abbey Road', 'The Wall', 'CMIYGL', 'Metropolis pt.2']
    }
  ];

  void _answerQuestion() {
    print('Answer chosen!');
    print(_questionIndex);
    setState(() {
      _questionIndex++;
      if (_questionIndex >= questions.length) _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: [
          Question(questions[_questionIndex]['question'] as String),
          ...(questions[_questionIndex]['answers'] as List).map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList()
        ]),
      ),
    );
  }
}
