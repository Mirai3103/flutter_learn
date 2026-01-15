// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MultipleChoiceWithMultipleAnswers _$MultipleChoiceWithMultipleAnswersFromJson(
  Map<String, dynamic> json,
) => MultipleChoiceWithMultipleAnswers(
  id: json['id'] as String,
  question: json['question'] as String,
  options: (json['options'] as List<dynamic>)
      .map((e) => QuizOption.fromJson(e as Map<String, dynamic>))
      .toList(),
  correctAnswers: (json['correctAnswers'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$MultipleChoiceWithMultipleAnswersToJson(
  MultipleChoiceWithMultipleAnswers instance,
) => <String, dynamic>{
  'id': instance.id,
  'question': instance.question,
  'options': instance.options,
  'correctAnswers': instance.correctAnswers,
  'runtimeType': instance.$type,
};

MultipleChoiceWithSingleAnswer _$MultipleChoiceWithSingleAnswerFromJson(
  Map<String, dynamic> json,
) => MultipleChoiceWithSingleAnswer(
  id: json['id'] as String,
  question: json['question'] as String,
  options: (json['options'] as List<dynamic>)
      .map((e) => QuizOption.fromJson(e as Map<String, dynamic>))
      .toList(),
  correctAnswer: json['correctAnswer'] as String,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$MultipleChoiceWithSingleAnswerToJson(
  MultipleChoiceWithSingleAnswer instance,
) => <String, dynamic>{
  'id': instance.id,
  'question': instance.question,
  'options': instance.options,
  'correctAnswer': instance.correctAnswer,
  'runtimeType': instance.$type,
};

FillInTheBlank _$FillInTheBlankFromJson(Map<String, dynamic> json) =>
    FillInTheBlank(
      id: json['id'] as String,
      question: json['question'] as String,
      correctAnswer: json['correctAnswer'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$FillInTheBlankToJson(FillInTheBlank instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'correctAnswer': instance.correctAnswer,
      'runtimeType': instance.$type,
    };

TrueOrFalse _$TrueOrFalseFromJson(Map<String, dynamic> json) => TrueOrFalse(
  id: json['id'] as String,
  question: json['question'] as String,
  correctAnswer: json['correctAnswer'] as bool,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$TrueOrFalseToJson(TrueOrFalse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'correctAnswer': instance.correctAnswer,
      'runtimeType': instance.$type,
    };

_QuizOption _$QuizOptionFromJson(Map<String, dynamic> json) => _QuizOption(
  id: (json['id'] as num).toInt(),
  option: json['option'] as String,
);

Map<String, dynamic> _$QuizOptionToJson(_QuizOption instance) =>
    <String, dynamic>{'id': instance.id, 'option': instance.option};
