// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuestionEntity {

 String get id; String get question; List<AnswerOptionEntity> get answers; String get type;/// Correct option key(s), comma-separated when multiple. From API when present.
 String? get correctAnswer;
/// Create a copy of QuestionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionEntityCopyWith<QuestionEntity> get copyWith => _$QuestionEntityCopyWithImpl<QuestionEntity>(this as QuestionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&const DeepCollectionEquality().equals(other.answers, answers)&&(identical(other.type, type) || other.type == type)&&(identical(other.correctAnswer, correctAnswer) || other.correctAnswer == correctAnswer));
}


@override
int get hashCode => Object.hash(runtimeType,id,question,const DeepCollectionEquality().hash(answers),type,correctAnswer);

@override
String toString() {
  return 'QuestionEntity(id: $id, question: $question, answers: $answers, type: $type, correctAnswer: $correctAnswer)';
}


}

/// @nodoc
abstract mixin class $QuestionEntityCopyWith<$Res>  {
  factory $QuestionEntityCopyWith(QuestionEntity value, $Res Function(QuestionEntity) _then) = _$QuestionEntityCopyWithImpl;
@useResult
$Res call({
 String id, String question, List<AnswerOptionEntity> answers, String type, String? correctAnswer
});




}
/// @nodoc
class _$QuestionEntityCopyWithImpl<$Res>
    implements $QuestionEntityCopyWith<$Res> {
  _$QuestionEntityCopyWithImpl(this._self, this._then);

  final QuestionEntity _self;
  final $Res Function(QuestionEntity) _then;

/// Create a copy of QuestionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? question = null,Object? answers = null,Object? type = null,Object? correctAnswer = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,answers: null == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as List<AnswerOptionEntity>,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,correctAnswer: freezed == correctAnswer ? _self.correctAnswer : correctAnswer // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [QuestionEntity].
extension QuestionEntityPatterns on QuestionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestionEntity value)  $default,){
final _that = this;
switch (_that) {
case _QuestionEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _QuestionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String question,  List<AnswerOptionEntity> answers,  String type,  String? correctAnswer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestionEntity() when $default != null:
return $default(_that.id,_that.question,_that.answers,_that.type,_that.correctAnswer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String question,  List<AnswerOptionEntity> answers,  String type,  String? correctAnswer)  $default,) {final _that = this;
switch (_that) {
case _QuestionEntity():
return $default(_that.id,_that.question,_that.answers,_that.type,_that.correctAnswer);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String question,  List<AnswerOptionEntity> answers,  String type,  String? correctAnswer)?  $default,) {final _that = this;
switch (_that) {
case _QuestionEntity() when $default != null:
return $default(_that.id,_that.question,_that.answers,_that.type,_that.correctAnswer);case _:
  return null;

}
}

}

/// @nodoc


class _QuestionEntity implements QuestionEntity {
  const _QuestionEntity({required this.id, required this.question, required final  List<AnswerOptionEntity> answers, this.type = 'single_choice', this.correctAnswer}): _answers = answers;
  

@override final  String id;
@override final  String question;
 final  List<AnswerOptionEntity> _answers;
@override List<AnswerOptionEntity> get answers {
  if (_answers is EqualUnmodifiableListView) return _answers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_answers);
}

@override@JsonKey() final  String type;
/// Correct option key(s), comma-separated when multiple. From API when present.
@override final  String? correctAnswer;

/// Create a copy of QuestionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionEntityCopyWith<_QuestionEntity> get copyWith => __$QuestionEntityCopyWithImpl<_QuestionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&const DeepCollectionEquality().equals(other._answers, _answers)&&(identical(other.type, type) || other.type == type)&&(identical(other.correctAnswer, correctAnswer) || other.correctAnswer == correctAnswer));
}


@override
int get hashCode => Object.hash(runtimeType,id,question,const DeepCollectionEquality().hash(_answers),type,correctAnswer);

@override
String toString() {
  return 'QuestionEntity(id: $id, question: $question, answers: $answers, type: $type, correctAnswer: $correctAnswer)';
}


}

/// @nodoc
abstract mixin class _$QuestionEntityCopyWith<$Res> implements $QuestionEntityCopyWith<$Res> {
  factory _$QuestionEntityCopyWith(_QuestionEntity value, $Res Function(_QuestionEntity) _then) = __$QuestionEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String question, List<AnswerOptionEntity> answers, String type, String? correctAnswer
});




}
/// @nodoc
class __$QuestionEntityCopyWithImpl<$Res>
    implements _$QuestionEntityCopyWith<$Res> {
  __$QuestionEntityCopyWithImpl(this._self, this._then);

  final _QuestionEntity _self;
  final $Res Function(_QuestionEntity) _then;

/// Create a copy of QuestionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? question = null,Object? answers = null,Object? type = null,Object? correctAnswer = freezed,}) {
  return _then(_QuestionEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,answers: null == answers ? _self._answers : answers // ignore: cast_nullable_to_non_nullable
as List<AnswerOptionEntity>,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,correctAnswer: freezed == correctAnswer ? _self.correctAnswer : correctAnswer // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
