// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalscore = 0;

  final _question = [
    {
      'question': 'Was ist deine Lieblingsfarbe?',
      'answers': [
        {'text': 'blue', 'score': 4},
        {'text': 'red', 'score': 3},
        {'text': 'green', 'score': 1}
      ]
    },
    {
      'question': 'Was ist dein Liblingstier?',
      'answers': [
        {'text': 'Hund', 'score': 4},
        {'text': 'Kartze', 'score': 2},
        {'text': 'Pferd', 'score': 2}
      ]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  void answerQuestion(int score) {
    _totalscore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Meine App'),
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                question: _question,
                questionIndex: _questionIndex,
                answerQuestion: answerQuestion)
            : Result(
                resultscore: _totalscore,
                resultreset: _resetQuiz,
              ),
      ),
    );
  }
}
