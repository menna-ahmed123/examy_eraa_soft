// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_session_args.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExamSessionArgs {

 String get examId; String get examTitle; String get subjectId; String get subjectName; int get durationMinutes; int get numberOfQuestions;
/// Create a copy of ExamSessionArgs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamSessionArgsCopyWith<ExamSessionArgs> get copyWith => _$ExamSessionArgsCopyWithImpl<ExamSessionArgs>(this as ExamSessionArgs, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamSessionArgs&&(identical(other.examId, examId) || other.examId == examId)&&(identical(other.examTitle, examTitle) || other.examTitle == examTitle)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.numberOfQuestions, numberOfQuestions) || other.numberOfQuestions == numberOfQuestions));
}


@override
int get hashCode => Object.hash(runtimeType,examId,examTitle,subjectId,subjectName,durationMinutes,numberOfQuestions);

@override
String toString() {
  return 'ExamSessionArgs(examId: $examId, examTitle: $examTitle, subjectId: $subjectId, subjectName: $subjectName, durationMinutes: $durationMinutes, numberOfQuestions: $numberOfQuestions)';
}


}

/// @nodoc
abstract mixin class $ExamSessionArgsCopyWith<$Res>  {
  factory $ExamSessionArgsCopyWith(ExamSessionArgs value, $Res Function(ExamSessionArgs) _then) = _$ExamSessionArgsCopyWithImpl;
@useResult
$Res call({
 String examId, String examTitle, String subjectId, String subjectName, int durationMinutes, int numberOfQuestions
});




}
/// @nodoc
class _$ExamSessionArgsCopyWithImpl<$Res>
    implements $ExamSessionArgsCopyWith<$Res> {
  _$ExamSessionArgsCopyWithImpl(this._self, this._then);

  final ExamSessionArgs _self;
  final $Res Function(ExamSessionArgs) _then;

/// Create a copy of ExamSessionArgs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? examId = null,Object? examTitle = null,Object? subjectId = null,Object? subjectName = null,Object? durationMinutes = null,Object? numberOfQuestions = null,}) {
  return _then(_self.copyWith(
examId: null == examId ? _self.examId : examId // ignore: cast_nullable_to_non_nullable
as String,examTitle: null == examTitle ? _self.examTitle : examTitle // ignore: cast_nullable_to_non_nullable
as String,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String,subjectName: null == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String,durationMinutes: null == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int,numberOfQuestions: null == numberOfQuestions ? _self.numberOfQuestions : numberOfQuestions // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ExamSessionArgs].
extension ExamSessionArgsPatterns on ExamSessionArgs {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamSessionArgs value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamSessionArgs() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamSessionArgs value)  $default,){
final _that = this;
switch (_that) {
case _ExamSessionArgs():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamSessionArgs value)?  $default,){
final _that = this;
switch (_that) {
case _ExamSessionArgs() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String examId,  String examTitle,  String subjectId,  String subjectName,  int durationMinutes,  int numberOfQuestions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamSessionArgs() when $default != null:
return $default(_that.examId,_that.examTitle,_that.subjectId,_that.subjectName,_that.durationMinutes,_that.numberOfQuestions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String examId,  String examTitle,  String subjectId,  String subjectName,  int durationMinutes,  int numberOfQuestions)  $default,) {final _that = this;
switch (_that) {
case _ExamSessionArgs():
return $default(_that.examId,_that.examTitle,_that.subjectId,_that.subjectName,_that.durationMinutes,_that.numberOfQuestions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String examId,  String examTitle,  String subjectId,  String subjectName,  int durationMinutes,  int numberOfQuestions)?  $default,) {final _that = this;
switch (_that) {
case _ExamSessionArgs() when $default != null:
return $default(_that.examId,_that.examTitle,_that.subjectId,_that.subjectName,_that.durationMinutes,_that.numberOfQuestions);case _:
  return null;

}
}

}

/// @nodoc


class _ExamSessionArgs implements ExamSessionArgs {
  const _ExamSessionArgs({required this.examId, required this.examTitle, required this.subjectId, required this.subjectName, required this.durationMinutes, required this.numberOfQuestions});
  

@override final  String examId;
@override final  String examTitle;
@override final  String subjectId;
@override final  String subjectName;
@override final  int durationMinutes;
@override final  int numberOfQuestions;

/// Create a copy of ExamSessionArgs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamSessionArgsCopyWith<_ExamSessionArgs> get copyWith => __$ExamSessionArgsCopyWithImpl<_ExamSessionArgs>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamSessionArgs&&(identical(other.examId, examId) || other.examId == examId)&&(identical(other.examTitle, examTitle) || other.examTitle == examTitle)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.numberOfQuestions, numberOfQuestions) || other.numberOfQuestions == numberOfQuestions));
}


@override
int get hashCode => Object.hash(runtimeType,examId,examTitle,subjectId,subjectName,durationMinutes,numberOfQuestions);

@override
String toString() {
  return 'ExamSessionArgs(examId: $examId, examTitle: $examTitle, subjectId: $subjectId, subjectName: $subjectName, durationMinutes: $durationMinutes, numberOfQuestions: $numberOfQuestions)';
}


}

/// @nodoc
abstract mixin class _$ExamSessionArgsCopyWith<$Res> implements $ExamSessionArgsCopyWith<$Res> {
  factory _$ExamSessionArgsCopyWith(_ExamSessionArgs value, $Res Function(_ExamSessionArgs) _then) = __$ExamSessionArgsCopyWithImpl;
@override @useResult
$Res call({
 String examId, String examTitle, String subjectId, String subjectName, int durationMinutes, int numberOfQuestions
});




}
/// @nodoc
class __$ExamSessionArgsCopyWithImpl<$Res>
    implements _$ExamSessionArgsCopyWith<$Res> {
  __$ExamSessionArgsCopyWithImpl(this._self, this._then);

  final _ExamSessionArgs _self;
  final $Res Function(_ExamSessionArgs) _then;

/// Create a copy of ExamSessionArgs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? examId = null,Object? examTitle = null,Object? subjectId = null,Object? subjectName = null,Object? durationMinutes = null,Object? numberOfQuestions = null,}) {
  return _then(_ExamSessionArgs(
examId: null == examId ? _self.examId : examId // ignore: cast_nullable_to_non_nullable
as String,examTitle: null == examTitle ? _self.examTitle : examTitle // ignore: cast_nullable_to_non_nullable
as String,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String,subjectName: null == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String,durationMinutes: null == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int,numberOfQuestions: null == numberOfQuestions ? _self.numberOfQuestions : numberOfQuestions // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
