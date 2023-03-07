import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

Color w = Colors.white;
Color b = Colors.black;

class _MyAppState extends State<MyApp> {
  bool isSwitched = false;
  int _totalscore = 0;
  int _questionIndex = 0;
  final List<Map<String, Object>> _question = [
    {
      'questionText': 'What\'s your favorite colors?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Yellow', 'score': 20},
        {'text': 'Black', 'score': 30},
        {'text': 'Green', 'score': 40},
      ]
    },
    {
      'questionText': 'What\'s your favorite animals?',
      'answers': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Elephant', 'score': 20},
        {'text': 'Rabbit', 'score': 30},
        {'text': 'Donkey', 'score': 40},
      ]
    },
    {
      'questionText': 'What\'s your favorite ilistratoer?',
      'answers': [
        {'text': 'Ahmed', 'score': 10},
        {'text': 'Asmael', 'score': 20},
        {'text': 'Anass', 'score': 30},
        {'text': 'Abrahem', 'score': 40},
      ]
    },
  ];
  void _restQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  void answerQuestion(int score) {
    //الدالة المسئولة عن الاجابة
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
          title: Text(
            'QuizApp',
            style: TextStyle(color: w),
          ),
          actions: [
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                  if (isSwitched == false) {
                    w = Colors.white;
                    b = Colors.black;
                  } else {
                    w = Colors.black;
                    b = Colors.white;
                  }
                });
              },
            ),
          ],
        ),
        body: Container(
          color: w,
          child: _questionIndex < _question.length
              ? Quiz(_question, _questionIndex, answerQuestion)
              : Result(_restQuiz, _totalscore),
        ),
      ),
    );
  }
}
