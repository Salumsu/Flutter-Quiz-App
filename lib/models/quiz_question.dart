class QuizQuestion {
  final String question;
  final List<String> options;
  final String correctAnswer;

  final int correctAnswerIndex;

  String? submittedAnswer;

  QuizQuestion(
      {required this.question,
      required this.options,
      required this.correctAnswerIndex})
      : correctAnswer = options[correctAnswerIndex];

  void setAnswer(String? answer) {
    submittedAnswer = answer;
  }

  bool isCorrect() {
    return submittedAnswer == correctAnswer;
  }

  List<String> getShuffledOptions() {
    List<String> shuffledOptions = List.from(options);
    shuffledOptions.shuffle();

    return shuffledOptions;
  }

  static QuizQuestion clone(QuizQuestion original) {
    return QuizQuestion(
        question: original.question,
        options: original.options,
        correctAnswerIndex: original.correctAnswerIndex);
  }
}
