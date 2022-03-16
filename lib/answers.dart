import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function()? selectHandler;
  final String answerText;
  const Answers(
      {Key? key, required this.selectHandler, required this.answerText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.blue, fixedSize: const Size(140, 40)),
      onPressed: selectHandler,
      child: Text(answerText),
    );
  }
}
