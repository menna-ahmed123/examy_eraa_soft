// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_score_args.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExamScoreArgs {

 String get examId; String get examTitle; String get subjectId; String get subjectName; int get durationMinutes; int get numberOfQuestions; int get correct; int get wrong; double get percentage; String get historyId; int get timeTakenMinutes; List<ExamAnswerReviewEntity> get reviewQuestions;
/// Create a copy of ExamScoreArgs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamScoreArgsCopyWith<ExamScoreArgs> get copyWith => _$ExamScoreArgsCopyWithImpl<ExamScoreArgs>(this as ExamScoreArgs, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamScoreArgs&&(identical(other.examId, examId) || other.examId == examId)&&(identical(other.examTitle, examTitle) || other.examTitle == examTitle)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.numberOfQuestions, numberOfQuestions) || other.numberOfQuestions == numberOfQuestions)&&(identical(other.correct, correct) || other.correct == correct)&&(identical(other.wrong, wrong) || other.wrong == wrong)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.historyId, historyId) || other.historyId == historyId)&&(identical(other.timeTakenMinutes, timeTakenMinutes) || other.timeTakenMinutes == timeTakenMinutes)&&const DeepCollectionEquality().equals(other.reviewQuestions, reviewQuestions));
}


@override
int get hashCode => Object.hash(runtimeType,examId,examTitle,subjectId,subjectName,durationMinutes,numberOfQuestions,correct,wrong,percentage,historyId,timeTakenMinutes,const DeepCollectionEquality().hash(reviewQuestions));

@override
String toString() {
  return 'ExamScoreArgs(examId: $examId, examTitle: $examTitle, subjectId: $subjectId, subjectName: $subjectName, durationMinutes: $durationMinutes, numberOfQuestions: $numberOfQuestions, correct: $correct, wrong: $wrong, percentage: $percentage, historyId: $historyId, timeTakenMinutes: $timeTakenMinutes, reviewQuestions: $reviewQuestions)';
}


}

/// @nodoc
abstract mixin class $ExamScoreArgsCopyWith<$Res>  {
  factory $ExamScoreArgsCopyWith(ExamScoreArgs value, $Res Function(ExamScoreArgs) _then) = _$ExamScoreArgsCopyWithImpl;
@useResult
$Res call({
 String examId, String examTitle, String subjectId, String subjectName, int durationMinutes, int numberOfQuestions, int correct, int wrong, double percentage, String historyId, int timeTakenMinutes, List<ExamAnswerReviewEntity> reviewQuestions
});




}
/// @nodoc
class _$ExamScoreArgsCopyWithImpl<$Res>
    implements $ExamScoreArgsCopyWith<$Res> {
  _$ExamScoreArgsCopyWithImpl(this._self, this._then);

  final ExamScoreArgs _self;
  final $Res Function(ExamScoreArgs) _then;

/// Create a copy of ExamScoreArgs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? examId = null,Object? examTitle = null,Object? subjectId = null,Object? subjectName = null,Object? durationMinutes = null,Object? numberOfQuestions = null,Object? correct = null,Object? wrong = null,Object? percentage = null,Object? historyId = null,Object? timeTakenMinutes = null,Object? reviewQuestions = null,}) {
  return _then(_self.copyWith(
examId: null == examId ? _self.examId : examId // ignore: cast_nullable_to_non_nullable
as String,examTitle: null == examTitle ? _self.examTitle : examTitle // ignore: cast_nullable_to_non_nullable
as String,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String,subjectName: null == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String,durationMinutes: null == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int,numberOfQuestions: null == numberOfQuestions ? _self.numberOfQuestions : numberOfQuestions // ignore: cast_nullable_to_non_nullable
as int,correct: null == correct ? _self.correct : correct // ignore: cast_nullable_to_non_nullable
as int,wrong: null == wrong ? _self.wrong : wrong // ignore: cast_nullable_to_non_nullable
as int,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double,historyId: null == historyId ? _self.historyId : historyId // ignore: cast_nullable_to_non_nullable
as String,timeTakenMinutes: null == timeTakenMinutes ? _self.timeTakenMinutes : timeTakenMinutes // ignore: cast_nullable_to_non_nullable
as int,reviewQuestions: null == reviewQuestions ? _self.reviewQuestions : reviewQuestions // ignore: cast_nullable_to_non_nullable
as List<ExamAnswerReviewEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [ExamScoreArgs].
extension ExamScoreArgsPatterns on ExamScoreArgs {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamScoreArgs value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamScoreArgs() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamScoreArgs value)  $default,){
final _that = this;
switch (_that) {
case _ExamScoreArgs():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamScoreArgs value)?  $default,){
final _that = this;
switch (_that) {
case _ExamScoreArgs() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String examId,  String examTitle,  String subjectId,  String subjectName,  int durationMinutes,  int numberOfQuestions,  int correct,  int wrong,  double percentage,  String historyId,  int timeTakenMinutes,  List<ExamAnswerReviewEntity> reviewQuestions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamScoreArgs() when $default != null:
return $default(_that.examId,_that.examTitle,_that.subjectId,_that.subjectName,_that.durationMinutes,_that.numberOfQuestions,_that.correct,_that.wrong,_that.percentage,_that.historyId,_that.timeTakenMinutes,_that.reviewQuestions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String examId,  String examTitle,  String subjectId,  String subjectName,  int durationMinutes,  int numberOfQuestions,  int correct,  int wrong,  double percentage,  String historyId,  int timeTakenMinutes,  List<ExamAnswerReviewEntity> reviewQuestions)  $default,) {final _that = this;
switch (_that) {
case _ExamScoreArgs():
return $default(_that.examId,_that.examTitle,_that.subjectId,_that.subjectName,_that.durationMinutes,_that.numberOfQuestions,_that.correct,_that.wrong,_that.percentage,_that.historyId,_that.timeTakenMinutes,_that.reviewQuestions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String examId,  String examTitle,  String subjectId,  String subjectName,  int durationMinutes,  int numberOfQuestions,  int correct,  int wrong,  double percentage,  String historyId,  int timeTakenMinutes,  List<ExamAnswerReviewEntity> reviewQuestions)?  $default,) {final _that = this;
switch (_that) {
case _ExamScoreArgs() when $default != null:
return $default(_that.examId,_that.examTitle,_that.subjectId,_that.subjectName,_that.durationMinutes,_that.numberOfQuestions,_that.correct,_that.wrong,_that.percentage,_that.historyId,_that.timeTakenMinutes,_that.reviewQuestions);case _:
  return null;

}
}

}

/// @nodoc


class _ExamScoreArgs implements ExamScoreArgs {
  const _ExamScoreArgs({required this.examId, required this.examTitle, required this.subjectId, required this.subjectName, required this.durationMinutes, required this.numberOfQuestions, required this.correct, required this.wrong, required this.percentage, required this.historyId, this.timeTakenMinutes = 1, final  List<ExamAnswerReviewEntity> reviewQuestions = const <ExamAnswerReviewEntity>[]}): _reviewQuestions = reviewQuestions;
  

@override final  String examId;
@override final  String examTitle;
@override final  String subjectId;
@override final  String subjectName;
@override final  int durationMinutes;
@override final  int numberOfQuestions;
@override final  int correct;
@override final  int wrong;
@override final  double percentage;
@override final  String historyId;
@override@JsonKey() final  int timeTakenMinutes;
 final  List<ExamAnswerReviewEntity> _reviewQuestions;
@override@JsonKey() List<ExamAnswerReviewEntity> get reviewQuestions {
  if (_reviewQuestions is EqualUnmodifiableListView) return _reviewQuestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviewQuestions);
}


/// Create a copy of ExamScoreArgs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamScoreArgsCopyWith<_ExamScoreArgs> get copyWith => __$ExamScoreArgsCopyWithImpl<_ExamScoreArgs>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamScoreArgs&&(identical(other.examId, examId) || other.examId == examId)&&(identical(other.examTitle, examTitle) || other.examTitle == examTitle)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.numberOfQuestions, numberOfQuestions) || other.numberOfQuestions == numberOfQuestions)&&(identical(other.correct, correct) || other.correct == correct)&&(identical(other.wrong, wrong) || other.wrong == wrong)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.historyId, historyId) || other.historyId == historyId)&&(identical(other.timeTakenMinutes, timeTakenMinutes) || other.timeTakenMinutes == timeTakenMinutes)&&const DeepCollectionEquality().equals(other._reviewQuestions, _reviewQuestions));
}


@override
int get hashCode => Object.hash(runtimeType,examId,examTitle,subjectId,subjectName,durationMinutes,numberOfQuestions,correct,wrong,percentage,historyId,timeTakenMinutes,const DeepCollectionEquality().hash(_reviewQuestions));

@override
String toString() {
  return 'ExamScoreArgs(examId: $examId, examTitle: $examTitle, subjectId: $subjectId, subjectName: $subjectName, durationMinutes: $durationMinutes, numberOfQuestions: $numberOfQuestions, correct: $correct, wrong: $wrong, percentage: $percentage, historyId: $historyId, timeTakenMinutes: $timeTakenMinutes, reviewQuestions: $reviewQuestions)';
}


}

/// @nodoc
abstract mixin class _$ExamScoreArgsCopyWith<$Res> implements $ExamScoreArgsCopyWith<$Res> {
  factory _$ExamScoreArgsCopyWith(_ExamScoreArgs value, $Res Function(_ExamScoreArgs) _then) = __$ExamScoreArgsCopyWithImpl;
@override @useResult
$Res call({
 String examId, String examTitle, String subjectId, String subjectName, int durationMinutes, int numberOfQuestions, int correct, int wrong, double percentage, String historyId, int timeTakenMinutes, List<ExamAnswerReviewEntity> reviewQuestions
});




}
/// @nodoc
class __$ExamScoreArgsCopyWithImpl<$Res>
    implements _$ExamScoreArgsCopyWith<$Res> {
  __$ExamScoreArgsCopyWithImpl(this._self, this._then);

  final _ExamScoreArgs _self;
  final $Res Function(_ExamScoreArgs) _then;

/// Create a copy of ExamScoreArgs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? examId = null,Object? examTitle = null,Object? subjectId = null,Object? subjectName = null,Object? durationMinutes = null,Object? numberOfQuestions = null,Object? correct = null,Object? wrong = null,Object? percentage = null,Object? historyId = null,Object? timeTakenMinutes = null,Object? reviewQuestions = null,}) {
  return _then(_ExamScoreArgs(
examId: null == examId ? _self.examId : examId // ignore: cast_nullable_to_non_nullable
as String,examTitle: null == examTitle ? _self.examTitle : examTitle // ignore: cast_nullable_to_non_nullable
as String,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String,subjectName: null == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String,durationMinutes: null == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int,numberOfQuestions: null == numberOfQuestions ? _self.numberOfQuestions : numberOfQuestions // ignore: cast_nullable_to_non_nullable
as int,correct: null == correct ? _self.correct : correct // ignore: cast_nullable_to_non_nullable
as int,wrong: null == wrong ? _self.wrong : wrong // ignore: cast_nullable_to_non_nullable
as int,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double,historyId: null == historyId ? _self.historyId : historyId // ignore: cast_nullable_to_non_nullable
as String,timeTakenMinutes: null == timeTakenMinutes ? _self.timeTakenMinutes : timeTakenMinutes // ignore: cast_nullable_to_non_nullable
as int,reviewQuestions: null == reviewQuestions ? _self._reviewQuestions : reviewQuestions // ignore: cast_nullable_to_non_nullable
as List<ExamAnswerReviewEntity>,
  ));
}


}

// dart format on
