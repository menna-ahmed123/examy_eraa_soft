// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_result_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CheckResultEntity {

 int get correct; int get wrong; double get percentage; List<ExamAnswerReviewEntity> get reviewQuestions; List<String> get correctQuestionIds; List<String> get wrongQuestionIds;
/// Create a copy of CheckResultEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckResultEntityCopyWith<CheckResultEntity> get copyWith => _$CheckResultEntityCopyWithImpl<CheckResultEntity>(this as CheckResultEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckResultEntity&&(identical(other.correct, correct) || other.correct == correct)&&(identical(other.wrong, wrong) || other.wrong == wrong)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&const DeepCollectionEquality().equals(other.reviewQuestions, reviewQuestions)&&const DeepCollectionEquality().equals(other.correctQuestionIds, correctQuestionIds)&&const DeepCollectionEquality().equals(other.wrongQuestionIds, wrongQuestionIds));
}


@override
int get hashCode => Object.hash(runtimeType,correct,wrong,percentage,const DeepCollectionEquality().hash(reviewQuestions),const DeepCollectionEquality().hash(correctQuestionIds),const DeepCollectionEquality().hash(wrongQuestionIds));

@override
String toString() {
  return 'CheckResultEntity(correct: $correct, wrong: $wrong, percentage: $percentage, reviewQuestions: $reviewQuestions, correctQuestionIds: $correctQuestionIds, wrongQuestionIds: $wrongQuestionIds)';
}


}

/// @nodoc
abstract mixin class $CheckResultEntityCopyWith<$Res>  {
  factory $CheckResultEntityCopyWith(CheckResultEntity value, $Res Function(CheckResultEntity) _then) = _$CheckResultEntityCopyWithImpl;
@useResult
$Res call({
 int correct, int wrong, double percentage, List<ExamAnswerReviewEntity> reviewQuestions, List<String> correctQuestionIds, List<String> wrongQuestionIds
});




}
/// @nodoc
class _$CheckResultEntityCopyWithImpl<$Res>
    implements $CheckResultEntityCopyWith<$Res> {
  _$CheckResultEntityCopyWithImpl(this._self, this._then);

  final CheckResultEntity _self;
  final $Res Function(CheckResultEntity) _then;

/// Create a copy of CheckResultEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? correct = null,Object? wrong = null,Object? percentage = null,Object? reviewQuestions = null,Object? correctQuestionIds = null,Object? wrongQuestionIds = null,}) {
  return _then(_self.copyWith(
correct: null == correct ? _self.correct : correct // ignore: cast_nullable_to_non_nullable
as int,wrong: null == wrong ? _self.wrong : wrong // ignore: cast_nullable_to_non_nullable
as int,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double,reviewQuestions: null == reviewQuestions ? _self.reviewQuestions : reviewQuestions // ignore: cast_nullable_to_non_nullable
as List<ExamAnswerReviewEntity>,correctQuestionIds: null == correctQuestionIds ? _self.correctQuestionIds : correctQuestionIds // ignore: cast_nullable_to_non_nullable
as List<String>,wrongQuestionIds: null == wrongQuestionIds ? _self.wrongQuestionIds : wrongQuestionIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckResultEntity].
extension CheckResultEntityPatterns on CheckResultEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckResultEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckResultEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckResultEntity value)  $default,){
final _that = this;
switch (_that) {
case _CheckResultEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckResultEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CheckResultEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int correct,  int wrong,  double percentage,  List<ExamAnswerReviewEntity> reviewQuestions,  List<String> correctQuestionIds,  List<String> wrongQuestionIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckResultEntity() when $default != null:
return $default(_that.correct,_that.wrong,_that.percentage,_that.reviewQuestions,_that.correctQuestionIds,_that.wrongQuestionIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int correct,  int wrong,  double percentage,  List<ExamAnswerReviewEntity> reviewQuestions,  List<String> correctQuestionIds,  List<String> wrongQuestionIds)  $default,) {final _that = this;
switch (_that) {
case _CheckResultEntity():
return $default(_that.correct,_that.wrong,_that.percentage,_that.reviewQuestions,_that.correctQuestionIds,_that.wrongQuestionIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int correct,  int wrong,  double percentage,  List<ExamAnswerReviewEntity> reviewQuestions,  List<String> correctQuestionIds,  List<String> wrongQuestionIds)?  $default,) {final _that = this;
switch (_that) {
case _CheckResultEntity() when $default != null:
return $default(_that.correct,_that.wrong,_that.percentage,_that.reviewQuestions,_that.correctQuestionIds,_that.wrongQuestionIds);case _:
  return null;

}
}

}

/// @nodoc


class _CheckResultEntity implements CheckResultEntity {
  const _CheckResultEntity({required this.correct, required this.wrong, required this.percentage, final  List<ExamAnswerReviewEntity> reviewQuestions = const <ExamAnswerReviewEntity>[], final  List<String> correctQuestionIds = const <String>[], final  List<String> wrongQuestionIds = const <String>[]}): _reviewQuestions = reviewQuestions,_correctQuestionIds = correctQuestionIds,_wrongQuestionIds = wrongQuestionIds;
  

@override final  int correct;
@override final  int wrong;
@override final  double percentage;
 final  List<ExamAnswerReviewEntity> _reviewQuestions;
@override@JsonKey() List<ExamAnswerReviewEntity> get reviewQuestions {
  if (_reviewQuestions is EqualUnmodifiableListView) return _reviewQuestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviewQuestions);
}

 final  List<String> _correctQuestionIds;
@override@JsonKey() List<String> get correctQuestionIds {
  if (_correctQuestionIds is EqualUnmodifiableListView) return _correctQuestionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_correctQuestionIds);
}

 final  List<String> _wrongQuestionIds;
@override@JsonKey() List<String> get wrongQuestionIds {
  if (_wrongQuestionIds is EqualUnmodifiableListView) return _wrongQuestionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_wrongQuestionIds);
}


/// Create a copy of CheckResultEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckResultEntityCopyWith<_CheckResultEntity> get copyWith => __$CheckResultEntityCopyWithImpl<_CheckResultEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckResultEntity&&(identical(other.correct, correct) || other.correct == correct)&&(identical(other.wrong, wrong) || other.wrong == wrong)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&const DeepCollectionEquality().equals(other._reviewQuestions, _reviewQuestions)&&const DeepCollectionEquality().equals(other._correctQuestionIds, _correctQuestionIds)&&const DeepCollectionEquality().equals(other._wrongQuestionIds, _wrongQuestionIds));
}


@override
int get hashCode => Object.hash(runtimeType,correct,wrong,percentage,const DeepCollectionEquality().hash(_reviewQuestions),const DeepCollectionEquality().hash(_correctQuestionIds),const DeepCollectionEquality().hash(_wrongQuestionIds));

@override
String toString() {
  return 'CheckResultEntity(correct: $correct, wrong: $wrong, percentage: $percentage, reviewQuestions: $reviewQuestions, correctQuestionIds: $correctQuestionIds, wrongQuestionIds: $wrongQuestionIds)';
}


}

/// @nodoc
abstract mixin class _$CheckResultEntityCopyWith<$Res> implements $CheckResultEntityCopyWith<$Res> {
  factory _$CheckResultEntityCopyWith(_CheckResultEntity value, $Res Function(_CheckResultEntity) _then) = __$CheckResultEntityCopyWithImpl;
@override @useResult
$Res call({
 int correct, int wrong, double percentage, List<ExamAnswerReviewEntity> reviewQuestions, List<String> correctQuestionIds, List<String> wrongQuestionIds
});




}
/// @nodoc
class __$CheckResultEntityCopyWithImpl<$Res>
    implements _$CheckResultEntityCopyWith<$Res> {
  __$CheckResultEntityCopyWithImpl(this._self, this._then);

  final _CheckResultEntity _self;
  final $Res Function(_CheckResultEntity) _then;

/// Create a copy of CheckResultEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? correct = null,Object? wrong = null,Object? percentage = null,Object? reviewQuestions = null,Object? correctQuestionIds = null,Object? wrongQuestionIds = null,}) {
  return _then(_CheckResultEntity(
correct: null == correct ? _self.correct : correct // ignore: cast_nullable_to_non_nullable
as int,wrong: null == wrong ? _self.wrong : wrong // ignore: cast_nullable_to_non_nullable
as int,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double,reviewQuestions: null == reviewQuestions ? _self._reviewQuestions : reviewQuestions // ignore: cast_nullable_to_non_nullable
as List<ExamAnswerReviewEntity>,correctQuestionIds: null == correctQuestionIds ? _self._correctQuestionIds : correctQuestionIds // ignore: cast_nullable_to_non_nullable
as List<String>,wrongQuestionIds: null == wrongQuestionIds ? _self._wrongQuestionIds : wrongQuestionIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
