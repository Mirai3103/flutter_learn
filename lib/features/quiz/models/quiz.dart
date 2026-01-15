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
  const factory QuizOption({required int id, required String option}) =
      _QuizOption;

  factory QuizOption.fromJson(Map<String, dynamic> json) =>
      _$QuizOptionFromJson(json);
}

@freezed
sealed class AnswerSheet with _$AnswerSheet {
  const factory AnswerSheet.multipleChoiceMultipleAnswers({
    required String quizId,
    required List<String> selectedAnswers,
  }) = MultipleChoiceWithMultipleAnswersAnswerSheet;

  const factory AnswerSheet.multipleChoiceSingleAnswer({
    required String quizId,
    required String selectedAnswer,
  }) = MultipleChoiceWithSingleAnswerAnswerSheet;

  const factory AnswerSheet.fillInTheBlank({
    required String quizId,
    required String answer,
  }) = FillInTheBlankAnswerSheet;

  const factory AnswerSheet.trueOrFalse({
    required String quizId,
    required bool answer,
  }) = TrueOrFalseAnswerSheet;
}
