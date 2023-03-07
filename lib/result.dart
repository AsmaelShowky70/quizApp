// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class Result extends StatelessWidget {
  final Function() q;
  final int resultScore;
  const Result(this.q, this.resultScore, {super.key});
//تقيم الدرجات
  String get resultPharse {
    String resultText;
    if (resultScore >= 70) {
      return resultText = 'you are awesome';
    } else if (resultScore >= 40) {
      return resultText = 'prettyliked';
    } else {
      return resultText = 'you are so bad';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'total: $resultScore',
            style:
                TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: b),
          ),
          Text(
            resultPharse,
            style:
                TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: b),
          ),
          TextButton(
              onPressed: q,
              child: const Text(
                'Reset The App',
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ))
        ],
      ),
    );
  }
}
