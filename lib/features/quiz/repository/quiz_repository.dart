import 'package:flutter_learn/features/quiz/models/quiz.dart';
import 'package:flutter_learn/features/quiz/services/quiz_service.dart';

class QuizRepository {
  final QuizService quizService;

  QuizRepository({required this.quizService});

  Future<List<Quiz>> getRandomQuizzes(int count) {
    return quizService.fetchRandomQuizzes(count);
  }
}
