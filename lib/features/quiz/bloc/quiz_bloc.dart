import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_learn/features/quiz/bloc/quiz_event.dart';
import 'package:flutter_learn/features/quiz/bloc/quiz_state.dart';
import 'package:flutter_learn/features/quiz/models/quiz.dart';
import 'package:flutter_learn/features/quiz/services/quiz_service.dart';

class QuizBloc extends Bloc<QuizEvent, QuizState> {
  final QuizService _quizService;
  static const int totalQuizTimeInSeconds = 600;
  Timer? _timer;
  QuizSession? lastSession;

  QuizBloc(this._quizService) : super(QuizInitial()) {
    on<SessionStarted>(_onSessionStarted);
    on<AnswerSubmitted>(_onAnswerSubmitted);
    on<QuizSessionTimeUpdated>(_onTimeUpdated);
    on<QuizSessionSubmitted>(_onSessionSubmitted);
    on<QuizSessionTimeoutEvent>(_onSessionTimeout);
  }

  Future<void> _onSessionStarted(
    SessionStarted event,
    Emitter<QuizState> emit,
  ) async {
    if (_timer != null) {
      _timer!.cancel();
      _timer = null;
    }
    emit(QuizLoading());
    try {
      final quizzes = await _quizService.fetchRandomQuizzes(
        event.numberOfQuestions,
      );

      emit(
        QuizSession(
          quizzes: quizzes,
          currentIndex: 0,
          remainingSeconds: totalQuizTimeInSeconds,
          answerSheets: [],
        ),
      );
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        final s = state;
        if (s is! QuizSession) return;

        final next = s.remainingSeconds - 1;

        if (next <= 0) {
          timer.cancel();
          add(QuizSessionTimeoutEvent());
        } else {
          add(QuizSessionTimeUpdated(remainingSeconds: next));
        }
      });
    } catch (e) {
      emit(QuizFetchingError(e.toString()));
    }
  }

  void _onSessionTimeout(
    QuizSessionTimeoutEvent event,
    Emitter<QuizState> emit,
  ) {
    if (state is QuizSession) {
      final currentState = state as QuizSession;
      lastSession = currentState;
      emit(QuizSessionTimeout());
    }
    if (_timer != null) {
      _timer!.cancel();
      _timer = null;
    }
  }

  void _onAnswerSubmitted(AnswerSubmitted event, Emitter<QuizState> emit) {
    if (state is QuizSession) {
      final currentState = state as QuizSession;
      final updatedAnswerSheets = List<AnswerSheet>.from(
        currentState.answerSheets,
      )..add(event.answerSheet);
      final nextIndex = currentState.currentIndex + 1;
      if (nextIndex < currentState.quizzes.length) {
        emit(
          currentState.copyWith(
            currentIndex: nextIndex,
            answerSheets: updatedAnswerSheets,
          ),
        );
      } else {
        // nothing more to do, quiz ended
        emit(currentState.copyWith(answerSheets: updatedAnswerSheets));
      }
    }
  }

  void _onTimeUpdated(QuizSessionTimeUpdated event, Emitter<QuizState> emit) {
    if (state is QuizSession) {
      final currentState = state as QuizSession;
      emit(currentState.copyWith(remainingSeconds: event.remainingSeconds));
    }
  }

  void _onSessionSubmitted(
    QuizSessionSubmitted event,
    Emitter<QuizState> emit,
  ) {
    if (state is QuizSession) {
      final currentState = state as QuizSession;
      lastSession = currentState;
      emit(QuizCompleted(currentState.answerSheets));
    }
    if (state is QuizSessionTimeout && lastSession != null) {
      emit(QuizCompleted(lastSession!.answerSheets));
    }
    if (_timer != null) {
      _timer!.cancel();
      _timer = null;
    }
  }
}
