// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExamEntity {

 String get id; String get title; int get duration; String get subjectId; int get numberOfQuestions; bool get active;
/// Create a copy of ExamEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamEntityCopyWith<ExamEntity> get copyWith => _$ExamEntityCopyWithImpl<ExamEntity>(this as ExamEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.numberOfQuestions, numberOfQuestions) || other.numberOfQuestions == numberOfQuestions)&&(identical(other.active, active) || other.active == active));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,duration,subjectId,numberOfQuestions,active);

@override
String toString() {
  return 'ExamEntity(id: $id, title: $title, duration: $duration, subjectId: $subjectId, numberOfQuestions: $numberOfQuestions, active: $active)';
}


}

/// @nodoc
abstract mixin class $ExamEntityCopyWith<$Res>  {
  factory $ExamEntityCopyWith(ExamEntity value, $Res Function(ExamEntity) _then) = _$ExamEntityCopyWithImpl;
@useResult
$Res call({
 String id, String title, int duration, String subjectId, int numberOfQuestions, bool active
});




}
/// @nodoc
class _$ExamEntityCopyWithImpl<$Res>
    implements $ExamEntityCopyWith<$Res> {
  _$ExamEntityCopyWithImpl(this._self, this._then);

  final ExamEntity _self;
  final $Res Function(ExamEntity) _then;

/// Create a copy of ExamEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? duration = null,Object? subjectId = null,Object? numberOfQuestions = null,Object? active = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String,numberOfQuestions: null == numberOfQuestions ? _self.numberOfQuestions : numberOfQuestions // ignore: cast_nullable_to_non_nullable
as int,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ExamEntity].
extension ExamEntityPatterns on ExamEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamEntity value)  $default,){
final _that = this;
switch (_that) {
case _ExamEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ExamEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  int duration,  String subjectId,  int numberOfQuestions,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamEntity() when $default != null:
return $default(_that.id,_that.title,_that.duration,_that.subjectId,_that.numberOfQuestions,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  int duration,  String subjectId,  int numberOfQuestions,  bool active)  $default,) {final _that = this;
switch (_that) {
case _ExamEntity():
return $default(_that.id,_that.title,_that.duration,_that.subjectId,_that.numberOfQuestions,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  int duration,  String subjectId,  int numberOfQuestions,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _ExamEntity() when $default != null:
return $default(_that.id,_that.title,_that.duration,_that.subjectId,_that.numberOfQuestions,_that.active);case _:
  return null;

}
}

}

/// @nodoc


class _ExamEntity implements ExamEntity {
  const _ExamEntity({required this.id, required this.title, required this.duration, required this.subjectId, required this.numberOfQuestions, this.active = true});
  

@override final  String id;
@override final  String title;
@override final  int duration;
@override final  String subjectId;
@override final  int numberOfQuestions;
@override@JsonKey() final  bool active;

/// Create a copy of ExamEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamEntityCopyWith<_ExamEntity> get copyWith => __$ExamEntityCopyWithImpl<_ExamEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&(identical(other.numberOfQuestions, numberOfQuestions) || other.numberOfQuestions == numberOfQuestions)&&(identical(other.active, active) || other.active == active));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,duration,subjectId,numberOfQuestions,active);

@override
String toString() {
  return 'ExamEntity(id: $id, title: $title, duration: $duration, subjectId: $subjectId, numberOfQuestions: $numberOfQuestions, active: $active)';
}


}

/// @nodoc
abstract mixin class _$ExamEntityCopyWith<$Res> implements $ExamEntityCopyWith<$Res> {
  factory _$ExamEntityCopyWith(_ExamEntity value, $Res Function(_ExamEntity) _then) = __$ExamEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, int duration, String subjectId, int numberOfQuestions, bool active
});




}
/// @nodoc
class __$ExamEntityCopyWithImpl<$Res>
    implements _$ExamEntityCopyWith<$Res> {
  __$ExamEntityCopyWithImpl(this._self, this._then);

  final _ExamEntity _self;
  final $Res Function(_ExamEntity) _then;

/// Create a copy of ExamEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? duration = null,Object? subjectId = null,Object? numberOfQuestions = null,Object? active = null,}) {
  return _then(_ExamEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String,numberOfQuestions: null == numberOfQuestions ? _self.numberOfQuestions : numberOfQuestions // ignore: cast_nullable_to_non_nullable
as int,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
