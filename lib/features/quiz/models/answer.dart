import 'package:flutter_learn/features/quiz/models/quiz.dart';

class AnswerGrader {
  const AnswerGrader();

  bool isCorrect({required Quiz quiz, required AnswerSheet sheet}) {
    return quiz.map(
      multipleChoiceMultipleAnswers: (q) => sheet.maybeWhen(
        multipleChoiceMultipleAnswers: (_, selected) =>
            _setEq(selected ?? [], q.correctAnswers),
        orElse: () => false,
      ),
      multipleChoiceSingleAnswer: (q) => sheet.maybeWhen(
        multipleChoiceSingleAnswer: (_, selected) =>
            selected == q.correctAnswer,
        orElse: () => false,
      ),
      fillInTheBlank: (q) => sheet.maybeWhen(
        fillInTheBlank: (_, ans) =>
            ans?.trim().toLowerCase() == q.correctAnswer.trim().toLowerCase(),
        orElse: () => false,
      ),
      trueOrFalse: (q) => sheet.maybeWhen(
        trueOrFalse: (_, ans) => ans == q.correctAnswer,
        orElse: () => false,
      ),
    );
  }
}

bool _setEq(List<String> a, List<String> b) {
  if (a.length != b.length) return false;
  final sa = Set<String>.from(a);
  final sb = Set<String>.from(b);
  return sa.length == a.length && sb.length == b.length && sa.containsAll(sb);
}
