import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class Question extends StatelessWidget {
  final String questionText; // اضافة متغير لتخذين الاسئلة
  const Question(this.questionText,
      {super.key}); //constractorلاضافة الاسئلة عند استدعائة

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10.0),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 30, color: b),
        textAlign: TextAlign.center,
      ),
    );
  }
}
