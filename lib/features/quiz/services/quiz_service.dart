import 'package:flutter_learn/features/quiz/models/quiz.dart';

class QuizService {
  static final List<Quiz> mockQuizzes = [
    // 1
    Quiz.trueOrFalse(
      id: '1',
      question: 'Flutter is developed by Google.',
      correctAnswer: true,
    ),

    // 2
    Quiz.multipleChoiceSingleAnswer(
      id: '2',
      question: 'Which language is primarily used to develop Flutter apps?',
      options: [
        QuizOption(id: 1, option: 'Java'),
        QuizOption(id: 2, option: 'Kotlin'),
        QuizOption(id: 3, option: 'Dart'),
        QuizOption(id: 4, option: 'Swift'),
      ],
      correctAnswer: 'Dart',
    ),

    // 3
    Quiz.fillInTheBlank(
      id: '3',
      question: 'Flutter uses _____ for its UI rendering.',
      correctAnswer: 'widgets',
    ),

    // 4
    Quiz.trueOrFalse(
      id: '4',
      question: 'Flutter supports hot reload.',
      correctAnswer: true,
    ),

    // 5
    Quiz.multipleChoiceMultipleAnswers(
      id: '5',
      question: 'Which platforms are supported by Flutter?',
      options: [
        QuizOption(id: 1, option: 'Android'),
        QuizOption(id: 2, option: 'iOS'),
        QuizOption(id: 3, option: 'Web'),
        QuizOption(id: 4, option: 'Windows'),
        QuizOption(id: 5, option: 'Linux'),
      ],
      correctAnswers: ['Android', 'iOS', 'Web', 'Windows', 'Linux'],
    ),

    // 6
    Quiz.multipleChoiceSingleAnswer(
      id: '6',
      question: 'Which widget is used for immutable UI in Flutter?',
      options: [
        QuizOption(id: 1, option: 'StatefulWidget'),
        QuizOption(id: 2, option: 'InheritedWidget'),
        QuizOption(id: 3, option: 'StatelessWidget'),
        QuizOption(id: 4, option: 'Container'),
      ],
      correctAnswer: 'StatelessWidget',
    ),

    // 7
    Quiz.trueOrFalse(
      id: '7',
      question: 'setState() can be used inside StatelessWidget.',
      correctAnswer: false,
    ),

    // 8
    Quiz.fillInTheBlank(
      id: '8',
      question: '_____ is used to manage the state of a StatefulWidget.',
      correctAnswer: 'State',
    ),

    // 9
    Quiz.multipleChoiceMultipleAnswers(
      id: '9',
      question: 'Which are Flutter layout widgets?',
      options: [
        QuizOption(id: 1, option: 'Row'),
        QuizOption(id: 2, option: 'Column'),
        QuizOption(id: 3, option: 'Stack'),
        QuizOption(id: 4, option: 'Text'),
      ],
      correctAnswers: ['Row', 'Column', 'Stack'],
    ),

    // 10
    Quiz.trueOrFalse(
      id: '10',
      question: 'Flutter apps use native UI components.',
      correctAnswer: false,
    ),

    // 11
    Quiz.multipleChoiceSingleAnswer(
      id: '11',
      question: 'Which command creates a new Flutter project?',
      options: [
        QuizOption(id: 1, option: 'flutter new'),
        QuizOption(id: 2, option: 'flutter init'),
        QuizOption(id: 3, option: 'flutter create'),
        QuizOption(id: 4, option: 'flutter start'),
      ],
      correctAnswer: 'flutter create',
    ),

    // 12
    Quiz.fillInTheBlank(
      id: '12',
      question:
          'Hot _____ allows you to see changes instantly without restarting the app.',
      correctAnswer: 'reload',
    ),

    // 13
    Quiz.trueOrFalse(
      id: '13',
      question: 'Flutter uses Skia as its rendering engine.',
      correctAnswer: true,
    ),

    // 14
    Quiz.multipleChoiceMultipleAnswers(
      id: '14',
      question: 'Which are valid Flutter state management solutions?',
      options: [
        QuizOption(id: 1, option: 'Provider'),
        QuizOption(id: 2, option: 'Bloc'),
        QuizOption(id: 3, option: 'Riverpod'),
        QuizOption(id: 4, option: 'Redux'),
        QuizOption(id: 5, option: 'JQuery'),
      ],
      correctAnswers: ['Provider', 'Bloc', 'Riverpod', 'Redux'],
    ),

    // 15
    Quiz.multipleChoiceSingleAnswer(
      id: '15',
      question: 'Which widget is commonly used for scrolling?',
      options: [
        QuizOption(id: 1, option: 'Column'),
        QuizOption(id: 2, option: 'ListView'),
        QuizOption(id: 3, option: 'Stack'),
        QuizOption(id: 4, option: 'Expanded'),
      ],
      correctAnswer: 'ListView',
    ),

    // 16
    Quiz.trueOrFalse(
      id: '16',
      question: 'Flutter can only be used to build mobile apps.',
      correctAnswer: false,
    ),

    // 17
    Quiz.fillInTheBlank(
      id: '17',
      question: '_____ widget is used to apply padding around another widget.',
      correctAnswer: 'Padding',
    ),

    // 18
    Quiz.multipleChoiceSingleAnswer(
      id: '18',
      question: 'Which file contains Flutter app dependencies?',
      options: [
        QuizOption(id: 1, option: 'main.dart'),
        QuizOption(id: 2, option: 'pubspec.yaml'),
        QuizOption(id: 3, option: 'android.gradle'),
        QuizOption(id: 4, option: 'build.yaml'),
      ],
      correctAnswer: 'pubspec.yaml',
    ),

    // 19
    Quiz.trueOrFalse(
      id: '19',
      question: 'Widgets in Flutter are immutable.',
      correctAnswer: true,
    ),

    // 20
    Quiz.multipleChoiceMultipleAnswers(
      id: '20',
      question: 'Which widgets can handle user input?',
      options: [
        QuizOption(id: 1, option: 'TextField'),
        QuizOption(id: 2, option: 'GestureDetector'),
        QuizOption(id: 3, option: 'ElevatedButton'),
        QuizOption(id: 4, option: 'Container'),
      ],
      correctAnswers: ['TextField', 'GestureDetector', 'ElevatedButton'],
    ),
  ];

  Future<List<Quiz>> fetchRandomQuizzes(int count) async {
    await Future.delayed(const Duration(seconds: 1));
    mockQuizzes.shuffle();
    return mockQuizzes.take(count).toList();
  }
}
