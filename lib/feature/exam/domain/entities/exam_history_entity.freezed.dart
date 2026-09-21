// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_history_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExamHistoryEntity {

 String get id; String get subjectId; String get subjectName; String get examId; String get examTitle; int get numberOfQuestions; int get durationMinutes; int get timeTakenMinutes; int get correct; int get wrong; double get percentage; DateTime get completedAt; List<ExamAnswerReviewEntity> get reviewQuestions;
/// Create a copy of ExamHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamHistoryEntityCopyWith<ExamHistoryEntity> get copyWith => _$ExamHistoryEntityCopyWithImpl<ExamHistoryEntity>(this as ExamHistoryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamHistoryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName)&&(identical(other.examId, examId) || other.examId == examId)&&(identical(other.examTitle, examTitle) || other.examTitle == examTitle)&&(identical(other.numberOfQuestions, numberOfQuestions) || other.numberOfQuestions == numberOfQuestions)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.timeTakenMinutes, timeTakenMinutes) || other.timeTakenMinutes == timeTakenMinutes)&&(identical(other.correct, correct) || other.correct == correct)&&(identical(other.wrong, wrong) || other.wrong == wrong)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&const DeepCollectionEquality().equals(other.reviewQuestions, reviewQuestions));
}


@override
int get hashCode => Object.hash(runtimeType,id,subjectId,subjectName,examId,examTitle,numberOfQuestions,durationMinutes,timeTakenMinutes,correct,wrong,percentage,completedAt,const DeepCollectionEquality().hash(reviewQuestions));

@override
String toString() {
  return 'ExamHistoryEntity(id: $id, subjectId: $subjectId, subjectName: $subjectName, examId: $examId, examTitle: $examTitle, numberOfQuestions: $numberOfQuestions, durationMinutes: $durationMinutes, timeTakenMinutes: $timeTakenMinutes, correct: $correct, wrong: $wrong, percentage: $percentage, completedAt: $completedAt, reviewQuestions: $reviewQuestions)';
}


}

/// @nodoc
abstract mixin class $ExamHistoryEntityCopyWith<$Res>  {
  factory $ExamHistoryEntityCopyWith(ExamHistoryEntity value, $Res Function(ExamHistoryEntity) _then) = _$ExamHistoryEntityCopyWithImpl;
@useResult
$Res call({
 String id, String subjectId, String subjectName, String examId, String examTitle, int numberOfQuestions, int durationMinutes, int timeTakenMinutes, int correct, int wrong, double percentage, DateTime completedAt, List<ExamAnswerReviewEntity> reviewQuestions
});




}
/// @nodoc
class _$ExamHistoryEntityCopyWithImpl<$Res>
    implements $ExamHistoryEntityCopyWith<$Res> {
  _$ExamHistoryEntityCopyWithImpl(this._self, this._then);

  final ExamHistoryEntity _self;
  final $Res Function(ExamHistoryEntity) _then;

/// Create a copy of ExamHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? subjectId = null,Object? subjectName = null,Object? examId = null,Object? examTitle = null,Object? numberOfQuestions = null,Object? durationMinutes = null,Object? timeTakenMinutes = null,Object? correct = null,Object? wrong = null,Object? percentage = null,Object? completedAt = null,Object? reviewQuestions = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String,subjectName: null == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String,examId: null == examId ? _self.examId : examId // ignore: cast_nullable_to_non_nullable
as String,examTitle: null == examTitle ? _self.examTitle : examTitle // ignore: cast_nullable_to_non_nullable
as String,numberOfQuestions: null == numberOfQuestions ? _self.numberOfQuestions : numberOfQuestions // ignore: cast_nullable_to_non_nullable
as int,durationMinutes: null == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int,timeTakenMinutes: null == timeTakenMinutes ? _self.timeTakenMinutes : timeTakenMinutes // ignore: cast_nullable_to_non_nullable
as int,correct: null == correct ? _self.correct : correct // ignore: cast_nullable_to_non_nullable
as int,wrong: null == wrong ? _self.wrong : wrong // ignore: cast_nullable_to_non_nullable
as int,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double,completedAt: null == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime,reviewQuestions: null == reviewQuestions ? _self.reviewQuestions : reviewQuestions // ignore: cast_nullable_to_non_nullable
as List<ExamAnswerReviewEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [ExamHistoryEntity].
extension ExamHistoryEntityPatterns on ExamHistoryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamHistoryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamHistoryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamHistoryEntity value)  $default,){
final _that = this;
switch (_that) {
case _ExamHistoryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamHistoryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ExamHistoryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String subjectId,  String subjectName,  String examId,  String examTitle,  int numberOfQuestions,  int durationMinutes,  int timeTakenMinutes,  int correct,  int wrong,  double percentage,  DateTime completedAt,  List<ExamAnswerReviewEntity> reviewQuestions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamHistoryEntity() when $default != null:
return $default(_that.id,_that.subjectId,_that.subjectName,_that.examId,_that.examTitle,_that.numberOfQuestions,_that.durationMinutes,_that.timeTakenMinutes,_that.correct,_that.wrong,_that.percentage,_that.completedAt,_that.reviewQuestions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String subjectId,  String subjectName,  String examId,  String examTitle,  int numberOfQuestions,  int durationMinutes,  int timeTakenMinutes,  int correct,  int wrong,  double percentage,  DateTime completedAt,  List<ExamAnswerReviewEntity> reviewQuestions)  $default,) {final _that = this;
switch (_that) {
case _ExamHistoryEntity():
return $default(_that.id,_that.subjectId,_that.subjectName,_that.examId,_that.examTitle,_that.numberOfQuestions,_that.durationMinutes,_that.timeTakenMinutes,_that.correct,_that.wrong,_that.percentage,_that.completedAt,_that.reviewQuestions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String subjectId,  String subjectName,  String examId,  String examTitle,  int numberOfQuestions,  int durationMinutes,  int timeTakenMinutes,  int correct,  int wrong,  double percentage,  DateTime completedAt,  List<ExamAnswerReviewEntity> reviewQuestions)?  $default,) {final _that = this;
switch (_that) {
case _ExamHistoryEntity() when $default != null:
return $default(_that.id,_that.subjectId,_that.subjectName,_that.examId,_that.examTitle,_that.numberOfQuestions,_that.durationMinutes,_that.timeTakenMinutes,_that.correct,_that.wrong,_that.percentage,_that.completedAt,_that.reviewQuestions);case _:
  return null;

}
}

}

/// @nodoc


class _ExamHistoryEntity implements ExamHistoryEntity {
  const _ExamHistoryEntity({required this.id, required this.subjectId, required this.subjectName, required this.examId, required this.examTitle, required this.numberOfQuestions, required this.durationMinutes, required this.timeTakenMinutes, required this.correct, required this.wrong, required this.percentage, required this.completedAt, final  List<ExamAnswerReviewEntity> reviewQuestions = const <ExamAnswerReviewEntity>[]}): _reviewQuestions = reviewQuestions;
  

@override final  String id;
@override final  String subjectId;
@override final  String subjectName;
@override final  String examId;
@override final  String examTitle;
@override final  int numberOfQuestions;
@override final  int durationMinutes;
@override final  int timeTakenMinutes;
@override final  int correct;
@override final  int wrong;
@override final  double percentage;
@override final  DateTime completedAt;
 final  List<ExamAnswerReviewEntity> _reviewQuestions;
@override@JsonKey() List<ExamAnswerReviewEntity> get reviewQuestions {
  if (_reviewQuestions is EqualUnmodifiableListView) return _reviewQuestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviewQuestions);
}


/// Create a copy of ExamHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamHistoryEntityCopyWith<_ExamHistoryEntity> get copyWith => __$ExamHistoryEntityCopyWithImpl<_ExamHistoryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamHistoryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName)&&(identical(other.examId, examId) || other.examId == examId)&&(identical(other.examTitle, examTitle) || other.examTitle == examTitle)&&(identical(other.numberOfQuestions, numberOfQuestions) || other.numberOfQuestions == numberOfQuestions)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.timeTakenMinutes, timeTakenMinutes) || other.timeTakenMinutes == timeTakenMinutes)&&(identical(other.correct, correct) || other.correct == correct)&&(identical(other.wrong, wrong) || other.wrong == wrong)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&const DeepCollectionEquality().equals(other._reviewQuestions, _reviewQuestions));
}


@override
int get hashCode => Object.hash(runtimeType,id,subjectId,subjectName,examId,examTitle,numberOfQuestions,durationMinutes,timeTakenMinutes,correct,wrong,percentage,completedAt,const DeepCollectionEquality().hash(_reviewQuestions));

@override
String toString() {
  return 'ExamHistoryEntity(id: $id, subjectId: $subjectId, subjectName: $subjectName, examId: $examId, examTitle: $examTitle, numberOfQuestions: $numberOfQuestions, durationMinutes: $durationMinutes, timeTakenMinutes: $timeTakenMinutes, correct: $correct, wrong: $wrong, percentage: $percentage, completedAt: $completedAt, reviewQuestions: $reviewQuestions)';
}


}

/// @nodoc
abstract mixin class _$ExamHistoryEntityCopyWith<$Res> implements $ExamHistoryEntityCopyWith<$Res> {
  factory _$ExamHistoryEntityCopyWith(_ExamHistoryEntity value, $Res Function(_ExamHistoryEntity) _then) = __$ExamHistoryEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String subjectId, String subjectName, String examId, String examTitle, int numberOfQuestions, int durationMinutes, int timeTakenMinutes, int correct, int wrong, double percentage, DateTime completedAt, List<ExamAnswerReviewEntity> reviewQuestions
});




}
/// @nodoc
class __$ExamHistoryEntityCopyWithImpl<$Res>
    implements _$ExamHistoryEntityCopyWith<$Res> {
  __$ExamHistoryEntityCopyWithImpl(this._self, this._then);

  final _ExamHistoryEntity _self;
  final $Res Function(_ExamHistoryEntity) _then;

/// Create a copy of ExamHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? subjectId = null,Object? subjectName = null,Object? examId = null,Object? examTitle = null,Object? numberOfQuestions = null,Object? durationMinutes = null,Object? timeTakenMinutes = null,Object? correct = null,Object? wrong = null,Object? percentage = null,Object? completedAt = null,Object? reviewQuestions = null,}) {
  return _then(_ExamHistoryEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String,subjectName: null == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String,examId: null == examId ? _self.examId : examId // ignore: cast_nullable_to_non_nullable
as String,examTitle: null == examTitle ? _self.examTitle : examTitle // ignore: cast_nullable_to_non_nullable
as String,numberOfQuestions: null == numberOfQuestions ? _self.numberOfQuestions : numberOfQuestions // ignore: cast_nullable_to_non_nullable
as int,durationMinutes: null == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int,timeTakenMinutes: null == timeTakenMinutes ? _self.timeTakenMinutes : timeTakenMinutes // ignore: cast_nullable_to_non_nullable
as int,correct: null == correct ? _self.correct : correct // ignore: cast_nullable_to_non_nullable
as int,wrong: null == wrong ? _self.wrong : wrong // ignore: cast_nullable_to_non_nullable
as int,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double,completedAt: null == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime,reviewQuestions: null == reviewQuestions ? _self._reviewQuestions : reviewQuestions // ignore: cast_nullable_to_non_nullable
as List<ExamAnswerReviewEntity>,
  ));
}


}

// dart format on
