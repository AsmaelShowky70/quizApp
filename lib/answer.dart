import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class Answer extends StatelessWidget {
  //لتغير النص الاجابة والدالة علي حسب الاستدعاء في main
  final String answerText;
  final Function() x;
  const Answer(this.x, this.answerText, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        onPressed: x,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 25, color: w),
        ),
      ),
    );
  }
}
