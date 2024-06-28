import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/pages/questions.dart';

class Question extends StatelessWidget {
  final QuizQuestion question;
  final ReturnedFunc? next;
  final ReturnedFunc? prev;
  final void Function(String? answer) setAnswer;
  final String? step;

  const Question({
    super.key,
    required this.question,
    this.next,
    this.prev,
    required this.setAnswer,
    this.step,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Builder(builder: (context) {
                return step != null ? Text(step ?? '') : const SizedBox();
              }),
              Text(
                question.question,
                style: const TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              Column(
                children: question.options.map((option) {
                  return Row(
                    children: [
                      Flexible(
                        child: RadioListTile(
                          key: Key(option),
                          value: option,
                          groupValue: question.submittedAnswer,
                          onChanged: (String? currentOption) {
                            setAnswer(currentOption);
                          },
                          title: Text(option),
                          selected: question.submittedAnswer == option,
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: prev,
                      child: const Text('Prev'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: question.submittedAnswer != null ? next : null,
                      child: const Text('Next'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
