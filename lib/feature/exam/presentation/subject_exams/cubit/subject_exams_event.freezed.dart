// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_exams_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubjectExamsEvent {

 String get subjectId;
/// Create a copy of SubjectExamsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubjectExamsEventCopyWith<SubjectExamsEvent> get copyWith => _$SubjectExamsEventCopyWithImpl<SubjectExamsEvent>(this as SubjectExamsEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubjectExamsEvent&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId));
}


@override
int get hashCode => Object.hash(runtimeType,subjectId);

@override
String toString() {
  return 'SubjectExamsEvent(subjectId: $subjectId)';
}


}

/// @nodoc
abstract mixin class $SubjectExamsEventCopyWith<$Res>  {
  factory $SubjectExamsEventCopyWith(SubjectExamsEvent value, $Res Function(SubjectExamsEvent) _then) = _$SubjectExamsEventCopyWithImpl;
@useResult
$Res call({
 String subjectId
});




}
/// @nodoc
class _$SubjectExamsEventCopyWithImpl<$Res>
    implements $SubjectExamsEventCopyWith<$Res> {
  _$SubjectExamsEventCopyWithImpl(this._self, this._then);

  final SubjectExamsEvent _self;
  final $Res Function(SubjectExamsEvent) _then;

/// Create a copy of SubjectExamsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subjectId = null,}) {
  return _then(_self.copyWith(
subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SubjectExamsEvent].
extension SubjectExamsEventPatterns on SubjectExamsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SubjectExamsLoad value)?  load,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SubjectExamsLoad() when load != null:
return load(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SubjectExamsLoad value)  load,}){
final _that = this;
switch (_that) {
case SubjectExamsLoad():
return load(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SubjectExamsLoad value)?  load,}){
final _that = this;
switch (_that) {
case SubjectExamsLoad() when load != null:
return load(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String subjectId)?  load,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SubjectExamsLoad() when load != null:
return load(_that.subjectId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String subjectId)  load,}) {final _that = this;
switch (_that) {
case SubjectExamsLoad():
return load(_that.subjectId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String subjectId)?  load,}) {final _that = this;
switch (_that) {
case SubjectExamsLoad() when load != null:
return load(_that.subjectId);case _:
  return null;

}
}

}

/// @nodoc


class SubjectExamsLoad implements SubjectExamsEvent {
  const SubjectExamsLoad({required this.subjectId});
  

@override final  String subjectId;

/// Create a copy of SubjectExamsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubjectExamsLoadCopyWith<SubjectExamsLoad> get copyWith => _$SubjectExamsLoadCopyWithImpl<SubjectExamsLoad>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubjectExamsLoad&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId));
}


@override
int get hashCode => Object.hash(runtimeType,subjectId);

@override
String toString() {
  return 'SubjectExamsEvent.load(subjectId: $subjectId)';
}


}

/// @nodoc
abstract mixin class $SubjectExamsLoadCopyWith<$Res> implements $SubjectExamsEventCopyWith<$Res> {
  factory $SubjectExamsLoadCopyWith(SubjectExamsLoad value, $Res Function(SubjectExamsLoad) _then) = _$SubjectExamsLoadCopyWithImpl;
@override @useResult
$Res call({
 String subjectId
});




}
/// @nodoc
class _$SubjectExamsLoadCopyWithImpl<$Res>
    implements $SubjectExamsLoadCopyWith<$Res> {
  _$SubjectExamsLoadCopyWithImpl(this._self, this._then);

  final SubjectExamsLoad _self;
  final $Res Function(SubjectExamsLoad) _then;

/// Create a copy of SubjectExamsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subjectId = null,}) {
  return _then(SubjectExamsLoad(
subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
