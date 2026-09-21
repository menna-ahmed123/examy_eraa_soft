// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_answer_review_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExamAnswerReviewEntity {

 String get questionId; String get question; List<AnswerOptionEntity> get answers; String get type; List<String> get selectedKeys; List<String> get correctKeys;
/// Create a copy of ExamAnswerReviewEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamAnswerReviewEntityCopyWith<ExamAnswerReviewEntity> get copyWith => _$ExamAnswerReviewEntityCopyWithImpl<ExamAnswerReviewEntity>(this as ExamAnswerReviewEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamAnswerReviewEntity&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.question, question) || other.question == question)&&const DeepCollectionEquality().equals(other.answers, answers)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.selectedKeys, selectedKeys)&&const DeepCollectionEquality().equals(other.correctKeys, correctKeys));
}


@override
int get hashCode => Object.hash(runtimeType,questionId,question,const DeepCollectionEquality().hash(answers),type,const DeepCollectionEquality().hash(selectedKeys),const DeepCollectionEquality().hash(correctKeys));

@override
String toString() {
  return 'ExamAnswerReviewEntity(questionId: $questionId, question: $question, answers: $answers, type: $type, selectedKeys: $selectedKeys, correctKeys: $correctKeys)';
}


}

/// @nodoc
abstract mixin class $ExamAnswerReviewEntityCopyWith<$Res>  {
  factory $ExamAnswerReviewEntityCopyWith(ExamAnswerReviewEntity value, $Res Function(ExamAnswerReviewEntity) _then) = _$ExamAnswerReviewEntityCopyWithImpl;
@useResult
$Res call({
 String questionId, String question, List<AnswerOptionEntity> answers, String type, List<String> selectedKeys, List<String> correctKeys
});




}
/// @nodoc
class _$ExamAnswerReviewEntityCopyWithImpl<$Res>
    implements $ExamAnswerReviewEntityCopyWith<$Res> {
  _$ExamAnswerReviewEntityCopyWithImpl(this._self, this._then);

  final ExamAnswerReviewEntity _self;
  final $Res Function(ExamAnswerReviewEntity) _then;

/// Create a copy of ExamAnswerReviewEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? questionId = null,Object? question = null,Object? answers = null,Object? type = null,Object? selectedKeys = null,Object? correctKeys = null,}) {
  return _then(_self.copyWith(
questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,answers: null == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as List<AnswerOptionEntity>,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,selectedKeys: null == selectedKeys ? _self.selectedKeys : selectedKeys // ignore: cast_nullable_to_non_nullable
as List<String>,correctKeys: null == correctKeys ? _self.correctKeys : correctKeys // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ExamAnswerReviewEntity].
extension ExamAnswerReviewEntityPatterns on ExamAnswerReviewEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamAnswerReviewEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamAnswerReviewEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamAnswerReviewEntity value)  $default,){
final _that = this;
switch (_that) {
case _ExamAnswerReviewEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamAnswerReviewEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ExamAnswerReviewEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String questionId,  String question,  List<AnswerOptionEntity> answers,  String type,  List<String> selectedKeys,  List<String> correctKeys)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamAnswerReviewEntity() when $default != null:
return $default(_that.questionId,_that.question,_that.answers,_that.type,_that.selectedKeys,_that.correctKeys);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String questionId,  String question,  List<AnswerOptionEntity> answers,  String type,  List<String> selectedKeys,  List<String> correctKeys)  $default,) {final _that = this;
switch (_that) {
case _ExamAnswerReviewEntity():
return $default(_that.questionId,_that.question,_that.answers,_that.type,_that.selectedKeys,_that.correctKeys);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String questionId,  String question,  List<AnswerOptionEntity> answers,  String type,  List<String> selectedKeys,  List<String> correctKeys)?  $default,) {final _that = this;
switch (_that) {
case _ExamAnswerReviewEntity() when $default != null:
return $default(_that.questionId,_that.question,_that.answers,_that.type,_that.selectedKeys,_that.correctKeys);case _:
  return null;

}
}

}

/// @nodoc


class _ExamAnswerReviewEntity implements ExamAnswerReviewEntity {
  const _ExamAnswerReviewEntity({required this.questionId, required this.question, required final  List<AnswerOptionEntity> answers, this.type = 'single_choice', final  List<String> selectedKeys = const <String>[], final  List<String> correctKeys = const <String>[]}): _answers = answers,_selectedKeys = selectedKeys,_correctKeys = correctKeys;
  

@override final  String questionId;
@override final  String question;
 final  List<AnswerOptionEntity> _answers;
@override List<AnswerOptionEntity> get answers {
  if (_answers is EqualUnmodifiableListView) return _answers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_answers);
}

@override@JsonKey() final  String type;
 final  List<String> _selectedKeys;
@override@JsonKey() List<String> get selectedKeys {
  if (_selectedKeys is EqualUnmodifiableListView) return _selectedKeys;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedKeys);
}

 final  List<String> _correctKeys;
@override@JsonKey() List<String> get correctKeys {
  if (_correctKeys is EqualUnmodifiableListView) return _correctKeys;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_correctKeys);
}


/// Create a copy of ExamAnswerReviewEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamAnswerReviewEntityCopyWith<_ExamAnswerReviewEntity> get copyWith => __$ExamAnswerReviewEntityCopyWithImpl<_ExamAnswerReviewEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamAnswerReviewEntity&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.question, question) || other.question == question)&&const DeepCollectionEquality().equals(other._answers, _answers)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._selectedKeys, _selectedKeys)&&const DeepCollectionEquality().equals(other._correctKeys, _correctKeys));
}


@override
int get hashCode => Object.hash(runtimeType,questionId,question,const DeepCollectionEquality().hash(_answers),type,const DeepCollectionEquality().hash(_selectedKeys),const DeepCollectionEquality().hash(_correctKeys));

@override
String toString() {
  return 'ExamAnswerReviewEntity(questionId: $questionId, question: $question, answers: $answers, type: $type, selectedKeys: $selectedKeys, correctKeys: $correctKeys)';
}


}

/// @nodoc
abstract mixin class _$ExamAnswerReviewEntityCopyWith<$Res> implements $ExamAnswerReviewEntityCopyWith<$Res> {
  factory _$ExamAnswerReviewEntityCopyWith(_ExamAnswerReviewEntity value, $Res Function(_ExamAnswerReviewEntity) _then) = __$ExamAnswerReviewEntityCopyWithImpl;
@override @useResult
$Res call({
 String questionId, String question, List<AnswerOptionEntity> answers, String type, List<String> selectedKeys, List<String> correctKeys
});




}
/// @nodoc
class __$ExamAnswerReviewEntityCopyWithImpl<$Res>
    implements _$ExamAnswerReviewEntityCopyWith<$Res> {
  __$ExamAnswerReviewEntityCopyWithImpl(this._self, this._then);

  final _ExamAnswerReviewEntity _self;
  final $Res Function(_ExamAnswerReviewEntity) _then;

/// Create a copy of ExamAnswerReviewEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? questionId = null,Object? question = null,Object? answers = null,Object? type = null,Object? selectedKeys = null,Object? correctKeys = null,}) {
  return _then(_ExamAnswerReviewEntity(
questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,answers: null == answers ? _self._answers : answers // ignore: cast_nullable_to_non_nullable
as List<AnswerOptionEntity>,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,selectedKeys: null == selectedKeys ? _self._selectedKeys : selectedKeys // ignore: cast_nullable_to_non_nullable
as List<String>,correctKeys: null == correctKeys ? _self._correctKeys : correctKeys // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
