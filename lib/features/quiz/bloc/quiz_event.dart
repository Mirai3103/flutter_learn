import 'package:flutter_learn/features/quiz/models/quiz.dart';

sealed class QuizEvent {
  const QuizEvent();
}

class SessionStarted extends QuizEvent {
  final int numberOfQuestions;

  SessionStarted({required this.numberOfQuestions});
}

class AnswerSheetUpdated extends QuizEvent {
  final AnswerSheet answerSheet;
  AnswerSheetUpdated({required this.answerSheet});
}

class NextQuestionRequested extends QuizEvent {
  NextQuestionRequested();
}     
class QuizSessionTimeUpdated extends QuizEvent {
  final int remainingSeconds;
  QuizSessionTimeUpdated({required this.remainingSeconds});
}

class QuizSessionTimeoutEvent extends QuizEvent {}

class QuizSessionSubmitted extends QuizEvent {}

class QuizRestarted extends QuizEvent {}