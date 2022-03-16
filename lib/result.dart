import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final Function resultreset;

  const Result({Key? key, required this.resultscore, required this.resultreset})
      : super(key: key);

  String get resultPhrace {
    String resultText;
    if (resultscore <= 4) {
      resultText = "Du bist super";
    } else if (resultscore <= 6) {
      resultText = "Du bist gut";
    } else if (resultscore <= 9) {
      resultText = "Du bist Okay";
    } else {
      resultText = "Du bist nicht der beste";
    }
    return resultText;
  }

  get onPressed => resultreset;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrace,
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        TextButton(
            onPressed: onPressed,
            child: const Text("Quiz neustarten"),
            style: TextButton.styleFrom(
              primary: Colors.black,
            ))
      ],
    ));
  }
}
