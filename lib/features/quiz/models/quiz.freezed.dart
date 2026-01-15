// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
Quiz _$QuizFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'multipleChoiceMultipleAnswers':
          return MultipleChoiceWithMultipleAnswers.fromJson(
            json
          );
                case 'multipleChoiceSingleAnswer':
          return MultipleChoiceWithSingleAnswer.fromJson(
            json
          );
                case 'fillInTheBlank':
          return FillInTheBlank.fromJson(
            json
          );
                case 'trueOrFalse':
          return TrueOrFalse.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'Quiz',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$Quiz {

 String get id; String get question;
/// Create a copy of Quiz
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizCopyWith<Quiz> get copyWith => _$QuizCopyWithImpl<Quiz>(this as Quiz, _$identity);

  /// Serializes this Quiz to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Quiz&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,question);

@override
String toString() {
  return 'Quiz(id: $id, question: $question)';
}


}

/// @nodoc
abstract mixin class $QuizCopyWith<$Res>  {
  factory $QuizCopyWith(Quiz value, $Res Function(Quiz) _then) = _$QuizCopyWithImpl;
@useResult
$Res call({
 String id, String question
});




}
/// @nodoc
class _$QuizCopyWithImpl<$Res>
    implements $QuizCopyWith<$Res> {
  _$QuizCopyWithImpl(this._self, this._then);

  final Quiz _self;
  final $Res Function(Quiz) _then;

/// Create a copy of Quiz
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? question = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Quiz].
extension QuizPatterns on Quiz {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MultipleChoiceWithMultipleAnswers value)?  multipleChoiceMultipleAnswers,TResult Function( MultipleChoiceWithSingleAnswer value)?  multipleChoiceSingleAnswer,TResult Function( FillInTheBlank value)?  fillInTheBlank,TResult Function( TrueOrFalse value)?  trueOrFalse,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MultipleChoiceWithMultipleAnswers() when multipleChoiceMultipleAnswers != null:
return multipleChoiceMultipleAnswers(_that);case MultipleChoiceWithSingleAnswer() when multipleChoiceSingleAnswer != null:
return multipleChoiceSingleAnswer(_that);case FillInTheBlank() when fillInTheBlank != null:
return fillInTheBlank(_that);case TrueOrFalse() when trueOrFalse != null:
return trueOrFalse(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MultipleChoiceWithMultipleAnswers value)  multipleChoiceMultipleAnswers,required TResult Function( MultipleChoiceWithSingleAnswer value)  multipleChoiceSingleAnswer,required TResult Function( FillInTheBlank value)  fillInTheBlank,required TResult Function( TrueOrFalse value)  trueOrFalse,}){
final _that = this;
switch (_that) {
case MultipleChoiceWithMultipleAnswers():
return multipleChoiceMultipleAnswers(_that);case MultipleChoiceWithSingleAnswer():
return multipleChoiceSingleAnswer(_that);case FillInTheBlank():
return fillInTheBlank(_that);case TrueOrFalse():
return trueOrFalse(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MultipleChoiceWithMultipleAnswers value)?  multipleChoiceMultipleAnswers,TResult? Function( MultipleChoiceWithSingleAnswer value)?  multipleChoiceSingleAnswer,TResult? Function( FillInTheBlank value)?  fillInTheBlank,TResult? Function( TrueOrFalse value)?  trueOrFalse,}){
final _that = this;
switch (_that) {
case MultipleChoiceWithMultipleAnswers() when multipleChoiceMultipleAnswers != null:
return multipleChoiceMultipleAnswers(_that);case MultipleChoiceWithSingleAnswer() when multipleChoiceSingleAnswer != null:
return multipleChoiceSingleAnswer(_that);case FillInTheBlank() when fillInTheBlank != null:
return fillInTheBlank(_that);case TrueOrFalse() when trueOrFalse != null:
return trueOrFalse(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id,  String question,  List<QuizOption> options,  List<String> correctAnswers)?  multipleChoiceMultipleAnswers,TResult Function( String id,  String question,  List<QuizOption> options,  String correctAnswer)?  multipleChoiceSingleAnswer,TResult Function( String id,  String question,  String correctAnswer)?  fillInTheBlank,TResult Function( String id,  String question,  bool correctAnswer)?  trueOrFalse,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MultipleChoiceWithMultipleAnswers() when multipleChoiceMultipleAnswers != null:
return multipleChoiceMultipleAnswers(_that.id,_that.question,_that.options,_that.correctAnswers);case MultipleChoiceWithSingleAnswer() when multipleChoiceSingleAnswer != null:
return multipleChoiceSingleAnswer(_that.id,_that.question,_that.options,_that.correctAnswer);case FillInTheBlank() when fillInTheBlank != null:
return fillInTheBlank(_that.id,_that.question,_that.correctAnswer);case TrueOrFalse() when trueOrFalse != null:
return trueOrFalse(_that.id,_that.question,_that.correctAnswer);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id,  String question,  List<QuizOption> options,  List<String> correctAnswers)  multipleChoiceMultipleAnswers,required TResult Function( String id,  String question,  List<QuizOption> options,  String correctAnswer)  multipleChoiceSingleAnswer,required TResult Function( String id,  String question,  String correctAnswer)  fillInTheBlank,required TResult Function( String id,  String question,  bool correctAnswer)  trueOrFalse,}) {final _that = this;
switch (_that) {
case MultipleChoiceWithMultipleAnswers():
return multipleChoiceMultipleAnswers(_that.id,_that.question,_that.options,_that.correctAnswers);case MultipleChoiceWithSingleAnswer():
return multipleChoiceSingleAnswer(_that.id,_that.question,_that.options,_that.correctAnswer);case FillInTheBlank():
return fillInTheBlank(_that.id,_that.question,_that.correctAnswer);case TrueOrFalse():
return trueOrFalse(_that.id,_that.question,_that.correctAnswer);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id,  String question,  List<QuizOption> options,  List<String> correctAnswers)?  multipleChoiceMultipleAnswers,TResult? Function( String id,  String question,  List<QuizOption> options,  String correctAnswer)?  multipleChoiceSingleAnswer,TResult? Function( String id,  String question,  String correctAnswer)?  fillInTheBlank,TResult? Function( String id,  String question,  bool correctAnswer)?  trueOrFalse,}) {final _that = this;
switch (_that) {
case MultipleChoiceWithMultipleAnswers() when multipleChoiceMultipleAnswers != null:
return multipleChoiceMultipleAnswers(_that.id,_that.question,_that.options,_that.correctAnswers);case MultipleChoiceWithSingleAnswer() when multipleChoiceSingleAnswer != null:
return multipleChoiceSingleAnswer(_that.id,_that.question,_that.options,_that.correctAnswer);case FillInTheBlank() when fillInTheBlank != null:
return fillInTheBlank(_that.id,_that.question,_that.correctAnswer);case TrueOrFalse() when trueOrFalse != null:
return trueOrFalse(_that.id,_that.question,_that.correctAnswer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class MultipleChoiceWithMultipleAnswers extends Quiz {
  const MultipleChoiceWithMultipleAnswers({required this.id, required this.question, required final  List<QuizOption> options, required final  List<String> correctAnswers, final  String? $type}): _options = options,_correctAnswers = correctAnswers,$type = $type ?? 'multipleChoiceMultipleAnswers',super._();
  factory MultipleChoiceWithMultipleAnswers.fromJson(Map<String, dynamic> json) => _$MultipleChoiceWithMultipleAnswersFromJson(json);

@override final  String id;
@override final  String question;
 final  List<QuizOption> _options;
 List<QuizOption> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}

 final  List<String> _correctAnswers;
 List<String> get correctAnswers {
  if (_correctAnswers is EqualUnmodifiableListView) return _correctAnswers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_correctAnswers);
}


@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Quiz
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MultipleChoiceWithMultipleAnswersCopyWith<MultipleChoiceWithMultipleAnswers> get copyWith => _$MultipleChoiceWithMultipleAnswersCopyWithImpl<MultipleChoiceWithMultipleAnswers>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MultipleChoiceWithMultipleAnswersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MultipleChoiceWithMultipleAnswers&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&const DeepCollectionEquality().equals(other._options, _options)&&const DeepCollectionEquality().equals(other._correctAnswers, _correctAnswers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,question,const DeepCollectionEquality().hash(_options),const DeepCollectionEquality().hash(_correctAnswers));

@override
String toString() {
  return 'Quiz.multipleChoiceMultipleAnswers(id: $id, question: $question, options: $options, correctAnswers: $correctAnswers)';
}


}

/// @nodoc
abstract mixin class $MultipleChoiceWithMultipleAnswersCopyWith<$Res> implements $QuizCopyWith<$Res> {
  factory $MultipleChoiceWithMultipleAnswersCopyWith(MultipleChoiceWithMultipleAnswers value, $Res Function(MultipleChoiceWithMultipleAnswers) _then) = _$MultipleChoiceWithMultipleAnswersCopyWithImpl;
@override @useResult
$Res call({
 String id, String question, List<QuizOption> options, List<String> correctAnswers
});




}
/// @nodoc
class _$MultipleChoiceWithMultipleAnswersCopyWithImpl<$Res>
    implements $MultipleChoiceWithMultipleAnswersCopyWith<$Res> {
  _$MultipleChoiceWithMultipleAnswersCopyWithImpl(this._self, this._then);

  final MultipleChoiceWithMultipleAnswers _self;
  final $Res Function(MultipleChoiceWithMultipleAnswers) _then;

/// Create a copy of Quiz
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? question = null,Object? options = null,Object? correctAnswers = null,}) {
  return _then(MultipleChoiceWithMultipleAnswers(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<QuizOption>,correctAnswers: null == correctAnswers ? _self._correctAnswers : correctAnswers // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class MultipleChoiceWithSingleAnswer extends Quiz {
  const MultipleChoiceWithSingleAnswer({required this.id, required this.question, required final  List<QuizOption> options, required this.correctAnswer, final  String? $type}): _options = options,$type = $type ?? 'multipleChoiceSingleAnswer',super._();
  factory MultipleChoiceWithSingleAnswer.fromJson(Map<String, dynamic> json) => _$MultipleChoiceWithSingleAnswerFromJson(json);

@override final  String id;
@override final  String question;
 final  List<QuizOption> _options;
 List<QuizOption> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}

 final  String correctAnswer;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Quiz
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MultipleChoiceWithSingleAnswerCopyWith<MultipleChoiceWithSingleAnswer> get copyWith => _$MultipleChoiceWithSingleAnswerCopyWithImpl<MultipleChoiceWithSingleAnswer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MultipleChoiceWithSingleAnswerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MultipleChoiceWithSingleAnswer&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&const DeepCollectionEquality().equals(other._options, _options)&&(identical(other.correctAnswer, correctAnswer) || other.correctAnswer == correctAnswer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,question,const DeepCollectionEquality().hash(_options),correctAnswer);

@override
String toString() {
  return 'Quiz.multipleChoiceSingleAnswer(id: $id, question: $question, options: $options, correctAnswer: $correctAnswer)';
}


}

/// @nodoc
abstract mixin class $MultipleChoiceWithSingleAnswerCopyWith<$Res> implements $QuizCopyWith<$Res> {
  factory $MultipleChoiceWithSingleAnswerCopyWith(MultipleChoiceWithSingleAnswer value, $Res Function(MultipleChoiceWithSingleAnswer) _then) = _$MultipleChoiceWithSingleAnswerCopyWithImpl;
@override @useResult
$Res call({
 String id, String question, List<QuizOption> options, String correctAnswer
});




}
/// @nodoc
class _$MultipleChoiceWithSingleAnswerCopyWithImpl<$Res>
    implements $MultipleChoiceWithSingleAnswerCopyWith<$Res> {
  _$MultipleChoiceWithSingleAnswerCopyWithImpl(this._self, this._then);

  final MultipleChoiceWithSingleAnswer _self;
  final $Res Function(MultipleChoiceWithSingleAnswer) _then;

/// Create a copy of Quiz
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? question = null,Object? options = null,Object? correctAnswer = null,}) {
  return _then(MultipleChoiceWithSingleAnswer(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<QuizOption>,correctAnswer: null == correctAnswer ? _self.correctAnswer : correctAnswer // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class FillInTheBlank extends Quiz {
  const FillInTheBlank({required this.id, required this.question, required this.correctAnswer, final  String? $type}): $type = $type ?? 'fillInTheBlank',super._();
  factory FillInTheBlank.fromJson(Map<String, dynamic> json) => _$FillInTheBlankFromJson(json);

@override final  String id;
@override final  String question;
 final  String correctAnswer;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Quiz
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FillInTheBlankCopyWith<FillInTheBlank> get copyWith => _$FillInTheBlankCopyWithImpl<FillInTheBlank>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FillInTheBlankToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FillInTheBlank&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&(identical(other.correctAnswer, correctAnswer) || other.correctAnswer == correctAnswer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,question,correctAnswer);

@override
String toString() {
  return 'Quiz.fillInTheBlank(id: $id, question: $question, correctAnswer: $correctAnswer)';
}


}

/// @nodoc
abstract mixin class $FillInTheBlankCopyWith<$Res> implements $QuizCopyWith<$Res> {
  factory $FillInTheBlankCopyWith(FillInTheBlank value, $Res Function(FillInTheBlank) _then) = _$FillInTheBlankCopyWithImpl;
@override @useResult
$Res call({
 String id, String question, String correctAnswer
});




}
/// @nodoc
class _$FillInTheBlankCopyWithImpl<$Res>
    implements $FillInTheBlankCopyWith<$Res> {
  _$FillInTheBlankCopyWithImpl(this._self, this._then);

  final FillInTheBlank _self;
  final $Res Function(FillInTheBlank) _then;

/// Create a copy of Quiz
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? question = null,Object? correctAnswer = null,}) {
  return _then(FillInTheBlank(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,correctAnswer: null == correctAnswer ? _self.correctAnswer : correctAnswer // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class TrueOrFalse extends Quiz {
  const TrueOrFalse({required this.id, required this.question, required this.correctAnswer, final  String? $type}): $type = $type ?? 'trueOrFalse',super._();
  factory TrueOrFalse.fromJson(Map<String, dynamic> json) => _$TrueOrFalseFromJson(json);

@override final  String id;
@override final  String question;
 final  bool correctAnswer;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Quiz
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrueOrFalseCopyWith<TrueOrFalse> get copyWith => _$TrueOrFalseCopyWithImpl<TrueOrFalse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrueOrFalseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrueOrFalse&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&(identical(other.correctAnswer, correctAnswer) || other.correctAnswer == correctAnswer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,question,correctAnswer);

@override
String toString() {
  return 'Quiz.trueOrFalse(id: $id, question: $question, correctAnswer: $correctAnswer)';
}


}

/// @nodoc
abstract mixin class $TrueOrFalseCopyWith<$Res> implements $QuizCopyWith<$Res> {
  factory $TrueOrFalseCopyWith(TrueOrFalse value, $Res Function(TrueOrFalse) _then) = _$TrueOrFalseCopyWithImpl;
@override @useResult
$Res call({
 String id, String question, bool correctAnswer
});




}
/// @nodoc
class _$TrueOrFalseCopyWithImpl<$Res>
    implements $TrueOrFalseCopyWith<$Res> {
  _$TrueOrFalseCopyWithImpl(this._self, this._then);

  final TrueOrFalse _self;
  final $Res Function(TrueOrFalse) _then;

/// Create a copy of Quiz
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? question = null,Object? correctAnswer = null,}) {
  return _then(TrueOrFalse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,correctAnswer: null == correctAnswer ? _self.correctAnswer : correctAnswer // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$QuizOption {

 String get id; String get option;
/// Create a copy of QuizOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizOptionCopyWith<QuizOption> get copyWith => _$QuizOptionCopyWithImpl<QuizOption>(this as QuizOption, _$identity);

  /// Serializes this QuizOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizOption&&(identical(other.id, id) || other.id == id)&&(identical(other.option, option) || other.option == option));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,option);

@override
String toString() {
  return 'QuizOption(id: $id, option: $option)';
}


}

/// @nodoc
abstract mixin class $QuizOptionCopyWith<$Res>  {
  factory $QuizOptionCopyWith(QuizOption value, $Res Function(QuizOption) _then) = _$QuizOptionCopyWithImpl;
@useResult
$Res call({
 String id, String option
});




}
/// @nodoc
class _$QuizOptionCopyWithImpl<$Res>
    implements $QuizOptionCopyWith<$Res> {
  _$QuizOptionCopyWithImpl(this._self, this._then);

  final QuizOption _self;
  final $Res Function(QuizOption) _then;

/// Create a copy of QuizOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? option = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,option: null == option ? _self.option : option // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [QuizOption].
extension QuizOptionPatterns on QuizOption {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuizOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuizOption() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuizOption value)  $default,){
final _that = this;
switch (_that) {
case _QuizOption():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuizOption value)?  $default,){
final _that = this;
switch (_that) {
case _QuizOption() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String option)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuizOption() when $default != null:
return $default(_that.id,_that.option);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String option)  $default,) {final _that = this;
switch (_that) {
case _QuizOption():
return $default(_that.id,_that.option);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String option)?  $default,) {final _that = this;
switch (_that) {
case _QuizOption() when $default != null:
return $default(_that.id,_that.option);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuizOption implements QuizOption {
  const _QuizOption({required this.id, required this.option});
  factory _QuizOption.fromJson(Map<String, dynamic> json) => _$QuizOptionFromJson(json);

@override final  String id;
@override final  String option;

/// Create a copy of QuizOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizOptionCopyWith<_QuizOption> get copyWith => __$QuizOptionCopyWithImpl<_QuizOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuizOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizOption&&(identical(other.id, id) || other.id == id)&&(identical(other.option, option) || other.option == option));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,option);

@override
String toString() {
  return 'QuizOption(id: $id, option: $option)';
}


}

/// @nodoc
abstract mixin class _$QuizOptionCopyWith<$Res> implements $QuizOptionCopyWith<$Res> {
  factory _$QuizOptionCopyWith(_QuizOption value, $Res Function(_QuizOption) _then) = __$QuizOptionCopyWithImpl;
@override @useResult
$Res call({
 String id, String option
});




}
/// @nodoc
class __$QuizOptionCopyWithImpl<$Res>
    implements _$QuizOptionCopyWith<$Res> {
  __$QuizOptionCopyWithImpl(this._self, this._then);

  final _QuizOption _self;
  final $Res Function(_QuizOption) _then;

/// Create a copy of QuizOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? option = null,}) {
  return _then(_QuizOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,option: null == option ? _self.option : option // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AnswerSheet {

 String get quizId;
/// Create a copy of AnswerSheet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnswerSheetCopyWith<AnswerSheet> get copyWith => _$AnswerSheetCopyWithImpl<AnswerSheet>(this as AnswerSheet, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnswerSheet&&(identical(other.quizId, quizId) || other.quizId == quizId));
}


@override
int get hashCode => Object.hash(runtimeType,quizId);

@override
String toString() {
  return 'AnswerSheet(quizId: $quizId)';
}


}

/// @nodoc
abstract mixin class $AnswerSheetCopyWith<$Res>  {
  factory $AnswerSheetCopyWith(AnswerSheet value, $Res Function(AnswerSheet) _then) = _$AnswerSheetCopyWithImpl;
@useResult
$Res call({
 String quizId
});




}
/// @nodoc
class _$AnswerSheetCopyWithImpl<$Res>
    implements $AnswerSheetCopyWith<$Res> {
  _$AnswerSheetCopyWithImpl(this._self, this._then);

  final AnswerSheet _self;
  final $Res Function(AnswerSheet) _then;

/// Create a copy of AnswerSheet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? quizId = null,}) {
  return _then(_self.copyWith(
quizId: null == quizId ? _self.quizId : quizId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AnswerSheet].
extension AnswerSheetPatterns on AnswerSheet {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MultipleChoiceWithMultipleAnswersAnswerSheet value)?  multipleChoiceMultipleAnswers,TResult Function( MultipleChoiceWithSingleAnswerAnswerSheet value)?  multipleChoiceSingleAnswer,TResult Function( FillInTheBlankAnswerSheet value)?  fillInTheBlank,TResult Function( TrueOrFalseAnswerSheet value)?  trueOrFalse,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MultipleChoiceWithMultipleAnswersAnswerSheet() when multipleChoiceMultipleAnswers != null:
return multipleChoiceMultipleAnswers(_that);case MultipleChoiceWithSingleAnswerAnswerSheet() when multipleChoiceSingleAnswer != null:
return multipleChoiceSingleAnswer(_that);case FillInTheBlankAnswerSheet() when fillInTheBlank != null:
return fillInTheBlank(_that);case TrueOrFalseAnswerSheet() when trueOrFalse != null:
return trueOrFalse(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MultipleChoiceWithMultipleAnswersAnswerSheet value)  multipleChoiceMultipleAnswers,required TResult Function( MultipleChoiceWithSingleAnswerAnswerSheet value)  multipleChoiceSingleAnswer,required TResult Function( FillInTheBlankAnswerSheet value)  fillInTheBlank,required TResult Function( TrueOrFalseAnswerSheet value)  trueOrFalse,}){
final _that = this;
switch (_that) {
case MultipleChoiceWithMultipleAnswersAnswerSheet():
return multipleChoiceMultipleAnswers(_that);case MultipleChoiceWithSingleAnswerAnswerSheet():
return multipleChoiceSingleAnswer(_that);case FillInTheBlankAnswerSheet():
return fillInTheBlank(_that);case TrueOrFalseAnswerSheet():
return trueOrFalse(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MultipleChoiceWithMultipleAnswersAnswerSheet value)?  multipleChoiceMultipleAnswers,TResult? Function( MultipleChoiceWithSingleAnswerAnswerSheet value)?  multipleChoiceSingleAnswer,TResult? Function( FillInTheBlankAnswerSheet value)?  fillInTheBlank,TResult? Function( TrueOrFalseAnswerSheet value)?  trueOrFalse,}){
final _that = this;
switch (_that) {
case MultipleChoiceWithMultipleAnswersAnswerSheet() when multipleChoiceMultipleAnswers != null:
return multipleChoiceMultipleAnswers(_that);case MultipleChoiceWithSingleAnswerAnswerSheet() when multipleChoiceSingleAnswer != null:
return multipleChoiceSingleAnswer(_that);case FillInTheBlankAnswerSheet() when fillInTheBlank != null:
return fillInTheBlank(_that);case TrueOrFalseAnswerSheet() when trueOrFalse != null:
return trueOrFalse(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String quizId,  List<String> selectedAnswers,  List<String> correctAnswers)?  multipleChoiceMultipleAnswers,TResult Function( String quizId,  String selectedAnswer,  String correctAnswer)?  multipleChoiceSingleAnswer,TResult Function( String quizId,  String answer,  String correctAnswer)?  fillInTheBlank,TResult Function( String quizId,  bool answer,  bool correctAnswer)?  trueOrFalse,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MultipleChoiceWithMultipleAnswersAnswerSheet() when multipleChoiceMultipleAnswers != null:
return multipleChoiceMultipleAnswers(_that.quizId,_that.selectedAnswers,_that.correctAnswers);case MultipleChoiceWithSingleAnswerAnswerSheet() when multipleChoiceSingleAnswer != null:
return multipleChoiceSingleAnswer(_that.quizId,_that.selectedAnswer,_that.correctAnswer);case FillInTheBlankAnswerSheet() when fillInTheBlank != null:
return fillInTheBlank(_that.quizId,_that.answer,_that.correctAnswer);case TrueOrFalseAnswerSheet() when trueOrFalse != null:
return trueOrFalse(_that.quizId,_that.answer,_that.correctAnswer);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String quizId,  List<String> selectedAnswers,  List<String> correctAnswers)  multipleChoiceMultipleAnswers,required TResult Function( String quizId,  String selectedAnswer,  String correctAnswer)  multipleChoiceSingleAnswer,required TResult Function( String quizId,  String answer,  String correctAnswer)  fillInTheBlank,required TResult Function( String quizId,  bool answer,  bool correctAnswer)  trueOrFalse,}) {final _that = this;
switch (_that) {
case MultipleChoiceWithMultipleAnswersAnswerSheet():
return multipleChoiceMultipleAnswers(_that.quizId,_that.selectedAnswers,_that.correctAnswers);case MultipleChoiceWithSingleAnswerAnswerSheet():
return multipleChoiceSingleAnswer(_that.quizId,_that.selectedAnswer,_that.correctAnswer);case FillInTheBlankAnswerSheet():
return fillInTheBlank(_that.quizId,_that.answer,_that.correctAnswer);case TrueOrFalseAnswerSheet():
return trueOrFalse(_that.quizId,_that.answer,_that.correctAnswer);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String quizId,  List<String> selectedAnswers,  List<String> correctAnswers)?  multipleChoiceMultipleAnswers,TResult? Function( String quizId,  String selectedAnswer,  String correctAnswer)?  multipleChoiceSingleAnswer,TResult? Function( String quizId,  String answer,  String correctAnswer)?  fillInTheBlank,TResult? Function( String quizId,  bool answer,  bool correctAnswer)?  trueOrFalse,}) {final _that = this;
switch (_that) {
case MultipleChoiceWithMultipleAnswersAnswerSheet() when multipleChoiceMultipleAnswers != null:
return multipleChoiceMultipleAnswers(_that.quizId,_that.selectedAnswers,_that.correctAnswers);case MultipleChoiceWithSingleAnswerAnswerSheet() when multipleChoiceSingleAnswer != null:
return multipleChoiceSingleAnswer(_that.quizId,_that.selectedAnswer,_that.correctAnswer);case FillInTheBlankAnswerSheet() when fillInTheBlank != null:
return fillInTheBlank(_that.quizId,_that.answer,_that.correctAnswer);case TrueOrFalseAnswerSheet() when trueOrFalse != null:
return trueOrFalse(_that.quizId,_that.answer,_that.correctAnswer);case _:
  return null;

}
}

}

/// @nodoc


class MultipleChoiceWithMultipleAnswersAnswerSheet extends AnswerSheet {
  const MultipleChoiceWithMultipleAnswersAnswerSheet({required this.quizId, required final  List<String> selectedAnswers, required final  List<String> correctAnswers}): _selectedAnswers = selectedAnswers,_correctAnswers = correctAnswers,super._();
  

@override final  String quizId;
 final  List<String> _selectedAnswers;
 List<String> get selectedAnswers {
  if (_selectedAnswers is EqualUnmodifiableListView) return _selectedAnswers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedAnswers);
}

 final  List<String> _correctAnswers;
 List<String> get correctAnswers {
  if (_correctAnswers is EqualUnmodifiableListView) return _correctAnswers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_correctAnswers);
}


/// Create a copy of AnswerSheet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MultipleChoiceWithMultipleAnswersAnswerSheetCopyWith<MultipleChoiceWithMultipleAnswersAnswerSheet> get copyWith => _$MultipleChoiceWithMultipleAnswersAnswerSheetCopyWithImpl<MultipleChoiceWithMultipleAnswersAnswerSheet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MultipleChoiceWithMultipleAnswersAnswerSheet&&(identical(other.quizId, quizId) || other.quizId == quizId)&&const DeepCollectionEquality().equals(other._selectedAnswers, _selectedAnswers)&&const DeepCollectionEquality().equals(other._correctAnswers, _correctAnswers));
}


@override
int get hashCode => Object.hash(runtimeType,quizId,const DeepCollectionEquality().hash(_selectedAnswers),const DeepCollectionEquality().hash(_correctAnswers));

@override
String toString() {
  return 'AnswerSheet.multipleChoiceMultipleAnswers(quizId: $quizId, selectedAnswers: $selectedAnswers, correctAnswers: $correctAnswers)';
}


}

/// @nodoc
abstract mixin class $MultipleChoiceWithMultipleAnswersAnswerSheetCopyWith<$Res> implements $AnswerSheetCopyWith<$Res> {
  factory $MultipleChoiceWithMultipleAnswersAnswerSheetCopyWith(MultipleChoiceWithMultipleAnswersAnswerSheet value, $Res Function(MultipleChoiceWithMultipleAnswersAnswerSheet) _then) = _$MultipleChoiceWithMultipleAnswersAnswerSheetCopyWithImpl;
@override @useResult
$Res call({
 String quizId, List<String> selectedAnswers, List<String> correctAnswers
});




}
/// @nodoc
class _$MultipleChoiceWithMultipleAnswersAnswerSheetCopyWithImpl<$Res>
    implements $MultipleChoiceWithMultipleAnswersAnswerSheetCopyWith<$Res> {
  _$MultipleChoiceWithMultipleAnswersAnswerSheetCopyWithImpl(this._self, this._then);

  final MultipleChoiceWithMultipleAnswersAnswerSheet _self;
  final $Res Function(MultipleChoiceWithMultipleAnswersAnswerSheet) _then;

/// Create a copy of AnswerSheet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quizId = null,Object? selectedAnswers = null,Object? correctAnswers = null,}) {
  return _then(MultipleChoiceWithMultipleAnswersAnswerSheet(
quizId: null == quizId ? _self.quizId : quizId // ignore: cast_nullable_to_non_nullable
as String,selectedAnswers: null == selectedAnswers ? _self._selectedAnswers : selectedAnswers // ignore: cast_nullable_to_non_nullable
as List<String>,correctAnswers: null == correctAnswers ? _self._correctAnswers : correctAnswers // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class MultipleChoiceWithSingleAnswerAnswerSheet extends AnswerSheet {
  const MultipleChoiceWithSingleAnswerAnswerSheet({required this.quizId, required this.selectedAnswer, required this.correctAnswer}): super._();
  

@override final  String quizId;
 final  String selectedAnswer;
 final  String correctAnswer;

/// Create a copy of AnswerSheet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MultipleChoiceWithSingleAnswerAnswerSheetCopyWith<MultipleChoiceWithSingleAnswerAnswerSheet> get copyWith => _$MultipleChoiceWithSingleAnswerAnswerSheetCopyWithImpl<MultipleChoiceWithSingleAnswerAnswerSheet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MultipleChoiceWithSingleAnswerAnswerSheet&&(identical(other.quizId, quizId) || other.quizId == quizId)&&(identical(other.selectedAnswer, selectedAnswer) || other.selectedAnswer == selectedAnswer)&&(identical(other.correctAnswer, correctAnswer) || other.correctAnswer == correctAnswer));
}


@override
int get hashCode => Object.hash(runtimeType,quizId,selectedAnswer,correctAnswer);

@override
String toString() {
  return 'AnswerSheet.multipleChoiceSingleAnswer(quizId: $quizId, selectedAnswer: $selectedAnswer, correctAnswer: $correctAnswer)';
}


}

/// @nodoc
abstract mixin class $MultipleChoiceWithSingleAnswerAnswerSheetCopyWith<$Res> implements $AnswerSheetCopyWith<$Res> {
  factory $MultipleChoiceWithSingleAnswerAnswerSheetCopyWith(MultipleChoiceWithSingleAnswerAnswerSheet value, $Res Function(MultipleChoiceWithSingleAnswerAnswerSheet) _then) = _$MultipleChoiceWithSingleAnswerAnswerSheetCopyWithImpl;
@override @useResult
$Res call({
 String quizId, String selectedAnswer, String correctAnswer
});




}
/// @nodoc
class _$MultipleChoiceWithSingleAnswerAnswerSheetCopyWithImpl<$Res>
    implements $MultipleChoiceWithSingleAnswerAnswerSheetCopyWith<$Res> {
  _$MultipleChoiceWithSingleAnswerAnswerSheetCopyWithImpl(this._self, this._then);

  final MultipleChoiceWithSingleAnswerAnswerSheet _self;
  final $Res Function(MultipleChoiceWithSingleAnswerAnswerSheet) _then;

/// Create a copy of AnswerSheet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quizId = null,Object? selectedAnswer = null,Object? correctAnswer = null,}) {
  return _then(MultipleChoiceWithSingleAnswerAnswerSheet(
quizId: null == quizId ? _self.quizId : quizId // ignore: cast_nullable_to_non_nullable
as String,selectedAnswer: null == selectedAnswer ? _self.selectedAnswer : selectedAnswer // ignore: cast_nullable_to_non_nullable
as String,correctAnswer: null == correctAnswer ? _self.correctAnswer : correctAnswer // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FillInTheBlankAnswerSheet extends AnswerSheet {
  const FillInTheBlankAnswerSheet({required this.quizId, required this.answer, required this.correctAnswer}): super._();
  

@override final  String quizId;
 final  String answer;
 final  String correctAnswer;

/// Create a copy of AnswerSheet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FillInTheBlankAnswerSheetCopyWith<FillInTheBlankAnswerSheet> get copyWith => _$FillInTheBlankAnswerSheetCopyWithImpl<FillInTheBlankAnswerSheet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FillInTheBlankAnswerSheet&&(identical(other.quizId, quizId) || other.quizId == quizId)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.correctAnswer, correctAnswer) || other.correctAnswer == correctAnswer));
}


@override
int get hashCode => Object.hash(runtimeType,quizId,answer,correctAnswer);

@override
String toString() {
  return 'AnswerSheet.fillInTheBlank(quizId: $quizId, answer: $answer, correctAnswer: $correctAnswer)';
}


}

/// @nodoc
abstract mixin class $FillInTheBlankAnswerSheetCopyWith<$Res> implements $AnswerSheetCopyWith<$Res> {
  factory $FillInTheBlankAnswerSheetCopyWith(FillInTheBlankAnswerSheet value, $Res Function(FillInTheBlankAnswerSheet) _then) = _$FillInTheBlankAnswerSheetCopyWithImpl;
@override @useResult
$Res call({
 String quizId, String answer, String correctAnswer
});




}
/// @nodoc
class _$FillInTheBlankAnswerSheetCopyWithImpl<$Res>
    implements $FillInTheBlankAnswerSheetCopyWith<$Res> {
  _$FillInTheBlankAnswerSheetCopyWithImpl(this._self, this._then);

  final FillInTheBlankAnswerSheet _self;
  final $Res Function(FillInTheBlankAnswerSheet) _then;

/// Create a copy of AnswerSheet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quizId = null,Object? answer = null,Object? correctAnswer = null,}) {
  return _then(FillInTheBlankAnswerSheet(
quizId: null == quizId ? _self.quizId : quizId // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,correctAnswer: null == correctAnswer ? _self.correctAnswer : correctAnswer // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TrueOrFalseAnswerSheet extends AnswerSheet {
  const TrueOrFalseAnswerSheet({required this.quizId, required this.answer, required this.correctAnswer}): super._();
  

@override final  String quizId;
 final  bool answer;
 final  bool correctAnswer;

/// Create a copy of AnswerSheet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrueOrFalseAnswerSheetCopyWith<TrueOrFalseAnswerSheet> get copyWith => _$TrueOrFalseAnswerSheetCopyWithImpl<TrueOrFalseAnswerSheet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrueOrFalseAnswerSheet&&(identical(other.quizId, quizId) || other.quizId == quizId)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.correctAnswer, correctAnswer) || other.correctAnswer == correctAnswer));
}


@override
int get hashCode => Object.hash(runtimeType,quizId,answer,correctAnswer);

@override
String toString() {
  return 'AnswerSheet.trueOrFalse(quizId: $quizId, answer: $answer, correctAnswer: $correctAnswer)';
}


}

/// @nodoc
abstract mixin class $TrueOrFalseAnswerSheetCopyWith<$Res> implements $AnswerSheetCopyWith<$Res> {
  factory $TrueOrFalseAnswerSheetCopyWith(TrueOrFalseAnswerSheet value, $Res Function(TrueOrFalseAnswerSheet) _then) = _$TrueOrFalseAnswerSheetCopyWithImpl;
@override @useResult
$Res call({
 String quizId, bool answer, bool correctAnswer
});




}
/// @nodoc
class _$TrueOrFalseAnswerSheetCopyWithImpl<$Res>
    implements $TrueOrFalseAnswerSheetCopyWith<$Res> {
  _$TrueOrFalseAnswerSheetCopyWithImpl(this._self, this._then);

  final TrueOrFalseAnswerSheet _self;
  final $Res Function(TrueOrFalseAnswerSheet) _then;

/// Create a copy of AnswerSheet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quizId = null,Object? answer = null,Object? correctAnswer = null,}) {
  return _then(TrueOrFalseAnswerSheet(
quizId: null == quizId ? _self.quizId : quizId // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as bool,correctAnswer: null == correctAnswer ? _self.correctAnswer : correctAnswer // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
