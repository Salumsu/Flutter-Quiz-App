import 'package:quiz_app/models/quiz_question.dart';

List<QuizQuestion> questionsList = [
  QuizQuestion(
    question: 'What is a component called in Flutter?',
    options: ['Component', 'Class', 'Widget', 'UI'],
    correctAnswerIndex: 2,
  ),
  QuizQuestion(
    question: 'Which widget is used for layouts in Flutter?',
    options: ['Column', 'Row', 'Stack', 'All of the above'],
    correctAnswerIndex: 3,
  ),
  QuizQuestion(
    question: 'What is the purpose of the `main()` function in Flutter?',
    options: [
      'To run the app',
      'To initialize variables',
      'To call other functions',
      'To create widgets'
    ],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    question: 'Which widget is used to create an input field in Flutter?',
    options: ['TextField', 'InputBox', 'TextInput', 'FormField'],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    question: 'How do you add padding to a widget?',
    options: ['Padding', 'Container', 'Margin', 'Box'],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    question: 'What is the use of the `build()` method in Flutter?',
    options: [
      'To create a new project',
      'To build the widget tree',
      'To compile the app',
      'To run the app'
    ],
    correctAnswerIndex: 1,
  ),
  QuizQuestion(
    question: 'Which command is used to create a new Flutter project?',
    options: ['flutter new', 'flutter create', 'flutter init', 'flutter start'],
    correctAnswerIndex: 1,
  ),
  QuizQuestion(
    question:
        'Which widget is used to arrange its children in a single column?',
    options: ['Row', 'Column', 'List', 'Stack'],
    correctAnswerIndex: 1,
  ),
  QuizQuestion(
    question: 'How do you declare a stateless widget?',
    options: ['StatelessWidget', 'StateWidget', 'Stateless', 'State'],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    question: 'Which widget is used to display an image in Flutter?',
    options: ['ImageView', 'Img', 'Image', 'Picture'],
    correctAnswerIndex: 2,
  ),
  QuizQuestion(
    question: 'What is the use of the `pubspec.yaml` file?',
    options: [
      'To manage dependencies',
      'To write Dart code',
      'To define routes',
      'To create widgets'
    ],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    question: 'Which method is called when a StatefulWidget is created?',
    options: ['createState', 'initState', 'build', 'setupState'],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    question: 'How do you add a custom font in Flutter?',
    options: [
      'Using Google Fonts',
      'Modifying main.dart',
      'Adding to assets in pubspec.yaml',
      'Directly in the widget'
    ],
    correctAnswerIndex: 2,
  ),
  QuizQuestion(
    question: 'Which widget is used to show a snackbar?',
    options: ['SnackBar', 'Toast', 'NotificationBar', 'MessageBar'],
    correctAnswerIndex: 0,
  ),
  QuizQuestion(
    question: 'Which function is used to navigate to a new screen?',
    options: ['push', 'navigate', 'pushScreen', 'navigateTo'],
    correctAnswerIndex: 0,
  ),
];
