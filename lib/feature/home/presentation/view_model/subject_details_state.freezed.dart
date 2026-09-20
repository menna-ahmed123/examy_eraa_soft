// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubjectDetailsState {

 SubjectEntity? get subject; bool get isLoading; String get errorMessage;
/// Create a copy of SubjectDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubjectDetailsStateCopyWith<SubjectDetailsState> get copyWith => _$SubjectDetailsStateCopyWithImpl<SubjectDetailsState>(this as SubjectDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubjectDetailsState&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,subject,isLoading,errorMessage);

@override
String toString() {
  return 'SubjectDetailsState(subject: $subject, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $SubjectDetailsStateCopyWith<$Res>  {
  factory $SubjectDetailsStateCopyWith(SubjectDetailsState value, $Res Function(SubjectDetailsState) _then) = _$SubjectDetailsStateCopyWithImpl;
@useResult
$Res call({
 SubjectEntity? subject, bool isLoading, String errorMessage
});




}
/// @nodoc
class _$SubjectDetailsStateCopyWithImpl<$Res>
    implements $SubjectDetailsStateCopyWith<$Res> {
  _$SubjectDetailsStateCopyWithImpl(this._self, this._then);

  final SubjectDetailsState _self;
  final $Res Function(SubjectDetailsState) _then;

/// Create a copy of SubjectDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subject = freezed,Object? isLoading = null,Object? errorMessage = null,}) {
  return _then(_self.copyWith(
subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectEntity?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SubjectDetailsState].
extension SubjectDetailsStatePatterns on SubjectDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubjectDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubjectDetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubjectDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _SubjectDetailsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubjectDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _SubjectDetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SubjectEntity? subject,  bool isLoading,  String errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubjectDetailsState() when $default != null:
return $default(_that.subject,_that.isLoading,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SubjectEntity? subject,  bool isLoading,  String errorMessage)  $default,) {final _that = this;
switch (_that) {
case _SubjectDetailsState():
return $default(_that.subject,_that.isLoading,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SubjectEntity? subject,  bool isLoading,  String errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _SubjectDetailsState() when $default != null:
return $default(_that.subject,_that.isLoading,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _SubjectDetailsState implements SubjectDetailsState {
  const _SubjectDetailsState({this.subject, this.isLoading = false, this.errorMessage = ''});
  

@override final  SubjectEntity? subject;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  String errorMessage;

/// Create a copy of SubjectDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubjectDetailsStateCopyWith<_SubjectDetailsState> get copyWith => __$SubjectDetailsStateCopyWithImpl<_SubjectDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubjectDetailsState&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,subject,isLoading,errorMessage);

@override
String toString() {
  return 'SubjectDetailsState(subject: $subject, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$SubjectDetailsStateCopyWith<$Res> implements $SubjectDetailsStateCopyWith<$Res> {
  factory _$SubjectDetailsStateCopyWith(_SubjectDetailsState value, $Res Function(_SubjectDetailsState) _then) = __$SubjectDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 SubjectEntity? subject, bool isLoading, String errorMessage
});




}
/// @nodoc
class __$SubjectDetailsStateCopyWithImpl<$Res>
    implements _$SubjectDetailsStateCopyWith<$Res> {
  __$SubjectDetailsStateCopyWithImpl(this._self, this._then);

  final _SubjectDetailsState _self;
  final $Res Function(_SubjectDetailsState) _then;

/// Create a copy of SubjectDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subject = freezed,Object? isLoading = null,Object? errorMessage = null,}) {
  return _then(_SubjectDetailsState(
subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as SubjectEntity?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
