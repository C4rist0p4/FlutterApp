import 'package:flutter/material.dart';
import './answers.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final void Function(int)? answerQuestion;

  const Quiz(
      {Key? key,
      required this.question,
      required this.questionIndex,
      required this.answerQuestion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questionText: (question[questionIndex]['question'] as String),
        ),
        ...(question[questionIndex]['answers'] as List<Map<String, dynamic>>)
            .map((answers) {
          return Answers(
            selectHandler: () => answerQuestion!(answers['score']),
            answerText: answers['text'],
          );
        }).toList(),
      ],
    );
  }
}
