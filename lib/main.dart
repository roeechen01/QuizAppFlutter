import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import 'result.dart';
import 'quiz.dart';

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
  int totalPoints = 0;

  final questions = const [
    {
      'question': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Green', 'score': 0},
        {'text': 'Blue', 'score': 5},
        {'text': 'Black', 'score': 10},
        {'text': 'Purple', 'score': 2}
      ]
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rhino', 'score': 0},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 10},
        {'text': 'Cat', 'score': 2},
      ]
    },
    {
      'question': 'What\'s your favorite album?',
      'answers': [
        {'text': 'CMIYGL', 'score': 12},
        {'text': 'Dark Side of the Moon', 'score': 10},
        {'text': 'The Wall', 'score': 2},
        {'text': 'Metropolis pt.2', 'score': 8},
      ]
    }
  ];

  var _questionindex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    print('Answer chosen!!');
    print(_questionIndex);
    setState(() {
      _totalScore += score;
      print(_totalScore);
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < questions.length
              ? Quiz(
                  questionIndex: _questionIndex,
                  questions: questions,
                  answerQuestion: _answerQuestion)
              : Result()),
    );
  }
}
