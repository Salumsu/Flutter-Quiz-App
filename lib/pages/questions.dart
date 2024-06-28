import 'package:flutter/material.dart';
import 'package:quiz_app/components/question.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/layouts/gradient_background.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/pages/score.dart';

typedef ReturnedFunc = void Function();

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key});

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  List<QuizQuestion> questions = [];
  int currentQuestionIndex = 0;

  @override
  void initState() {
    super.initState();
    questions = questionsList;
    questions.shuffle();
    questions = questions
        .sublist(0, 10)
        .map(
          (question) => QuizQuestion.clone(question),
        )
        .toList();
    currentQuestionIndex = 0;
  }

  ReturnedFunc? getNextMethod() {
    if (currentQuestionIndex < questions.length - 1) {
      return () {
        setState(() {
          currentQuestionIndex++;
        });
      };
    }

    return null;
  }

  ReturnedFunc? getPrevMethod() {
    if (currentQuestionIndex > 0) {
      return () {
        setState(() {
          currentQuestionIndex--;
        });
      };
    }

    return null;
  }

  bool isSubmittable() {
    for (int i = 0; i < questions.length; i++) {
      if (questions[i].submittedAnswer == null) {
        return false;
      }
    }
    return true;
  }

  ReturnedFunc? getSubmitMethod() {
    if (isSubmittable()) {
      return () {
        int score = 0;
        for (int i = 0; i < questions.length; i++) {
          if (questions[i].isCorrect()) {
            score++;
          }
        }

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ScorePage(
              score: score,
              numberOfItems: questions.length,
            ),
          ),
        );
      };
    }
    return null;
  }

  void setCurrentAnswer(String? answer) {
    setState(() {
      questions[currentQuestionIndex].setAnswer(answer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: Center(
          child: Column(
            children: [
              Question(
                question: questions[currentQuestionIndex],
                next: getNextMethod(),
                prev: getPrevMethod(),
                setAnswer: setCurrentAnswer,
                key: Key(questions[currentQuestionIndex].submittedAnswer ?? ''),
                step: "${currentQuestionIndex + 1}/${questions.length}",
              ),
              Center(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    disabledBackgroundColor: Colors.blueGrey,
                    disabledForegroundColor: Colors.grey,
                    side: const BorderSide(width: 1, color: Colors.white),
                  ),
                  onPressed: getSubmitMethod(),
                  child: const Text(
                    'Submit',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
