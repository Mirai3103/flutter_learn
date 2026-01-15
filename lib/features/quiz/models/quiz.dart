import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz.freezed.dart';
part 'quiz.g.dart';

@freezed
sealed class Quiz with _$Quiz {
  const Quiz._();

  const factory Quiz.multipleChoiceMultipleAnswers({
    required String id,
    required String question,
    required List<QuizOption> options,
    required List<String> correctAnswers,
  }) = MultipleChoiceWithMultipleAnswers;

  const factory Quiz.multipleChoiceSingleAnswer({
    required String id,
    required String question,
    required List<QuizOption> options,
    required String correctAnswer,
  }) = MultipleChoiceWithSingleAnswer;

  const factory Quiz.fillInTheBlank({
    required String id,
    required String question,
    required String correctAnswer,
  }) = FillInTheBlank;

  const factory Quiz.trueOrFalse({
    required String id,
    required String question,
    required bool correctAnswer,
  }) = TrueOrFalse;

  factory Quiz.fromJson(Map<String, dynamic> json) => _$QuizFromJson(json);
}

@freezed
sealed class QuizOption with _$QuizOption {
  const factory QuizOption({required String id, required String option}) =
      _QuizOption;

  factory QuizOption.fromJson(Map<String, dynamic> json) =>
      _$QuizOptionFromJson(json);
}

@freezed
sealed class AnswerSheet with _$AnswerSheet {
  const AnswerSheet._();
  const factory AnswerSheet.multipleChoiceMultipleAnswers({
    required String quizId,
    required List<String> selectedAnswers,
    required List<String> correctAnswers,
  }) = MultipleChoiceWithMultipleAnswersAnswerSheet;

  const factory AnswerSheet.multipleChoiceSingleAnswer({
    required String quizId,
    required String selectedAnswer,
    required String correctAnswer,
  }) = MultipleChoiceWithSingleAnswerAnswerSheet;

  const factory AnswerSheet.fillInTheBlank({
    required String quizId,
    required String answer,
    required String correctAnswer,
  }) = FillInTheBlankAnswerSheet;

  const factory AnswerSheet.trueOrFalse({
    required String quizId,
    required bool answer,
    required bool correctAnswer,
  }) = TrueOrFalseAnswerSheet;
  bool get isCorrect => when(
    multipleChoiceMultipleAnswers: (_, selected, correct) =>
        _listEqualsIgnoreOrder(selected, correct),
    multipleChoiceSingleAnswer: (_, selected, correct) => selected == correct,
    fillInTheBlank: (_, answer, correct) =>
        answer.trim().toLowerCase() == correct.trim().toLowerCase(),
    trueOrFalse: (_, answer, correct) => answer == correct,
  );
  bool _listEqualsIgnoreOrder(List<String> a, List<String> b) {
    if (a.length != b.length) return false;
    final sa = Set<String>.from(a);
    final sb = Set<String>.from(b);
    return sa.length == a.length && sb.length == b.length && sa.containsAll(sb);
  }
}
