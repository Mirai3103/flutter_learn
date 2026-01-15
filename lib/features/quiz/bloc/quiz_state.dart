import 'package:equatable/equatable.dart';
import 'package:flutter_learn/features/quiz/models/quiz.dart';

abstract class QuizState extends Equatable {
  const QuizState();

  @override
  List<Object?> get props => [];
}

class QuizInitial extends QuizState {
  const QuizInitial();
}

class QuizLoading extends QuizState {
  const QuizLoading();
}

class QuizFetchingError extends QuizState {
  final String message;
  const QuizFetchingError(this.message);

  @override
  List<Object?> get props => [message];
}

class QuizSession extends QuizState {
  final List<Quiz> quizzes;
  final int currentIndex;
  final int remainingSeconds;
  final List<AnswerSheet> answerSheets;

  const QuizSession({
    required this.quizzes,
    this.currentIndex = 0,
    this.remainingSeconds = 0,
    this.answerSheets = const [],
  });

  @override
  List<Object?> get props => [
    quizzes,
    currentIndex,
    remainingSeconds,
    answerSheets,
  ];

  QuizSession copyWith({
    List<Quiz>? quizzes,
    int? currentIndex,
    int? remainingSeconds,
    List<AnswerSheet>? answerSheets,
  }) {
    return QuizSession(
      quizzes: quizzes ?? this.quizzes,
      currentIndex: currentIndex ?? this.currentIndex,
      remainingSeconds: remainingSeconds ?? this.remainingSeconds,
      answerSheets: answerSheets ?? this.answerSheets,
    );
  }
}

class QuizSessionTimeout extends QuizState {
  const QuizSessionTimeout();
}

class QuizCompleted extends QuizState {
  final List<AnswerSheet> answerSheets;
  const QuizCompleted(this.answerSheets, this.correctAnswers, this.incorrectAnswers, this.totalAnswers);
  final int correctAnswers;
  final int incorrectAnswers;
  final int totalAnswers;

  @override
  List<Object?> get props => [answerSheets, correctAnswers, incorrectAnswers, totalAnswers];
}
