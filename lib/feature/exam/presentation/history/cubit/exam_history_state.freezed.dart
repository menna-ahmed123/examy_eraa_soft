// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExamHistoryState {

 BaseState<List<ExamHistoryEntity>>? get historyState;
/// Create a copy of ExamHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamHistoryStateCopyWith<ExamHistoryState> get copyWith => _$ExamHistoryStateCopyWithImpl<ExamHistoryState>(this as ExamHistoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamHistoryState&&(identical(other.historyState, historyState) || other.historyState == historyState));
}


@override
int get hashCode => Object.hash(runtimeType,historyState);

@override
String toString() {
  return 'ExamHistoryState(historyState: $historyState)';
}


}

/// @nodoc
abstract mixin class $ExamHistoryStateCopyWith<$Res>  {
  factory $ExamHistoryStateCopyWith(ExamHistoryState value, $Res Function(ExamHistoryState) _then) = _$ExamHistoryStateCopyWithImpl;
@useResult
$Res call({
 BaseState<List<ExamHistoryEntity>>? historyState
});


$BaseStateCopyWith<List<ExamHistoryEntity>, $Res>? get historyState;

}
/// @nodoc
class _$ExamHistoryStateCopyWithImpl<$Res>
    implements $ExamHistoryStateCopyWith<$Res> {
  _$ExamHistoryStateCopyWithImpl(this._self, this._then);

  final ExamHistoryState _self;
  final $Res Function(ExamHistoryState) _then;

/// Create a copy of ExamHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? historyState = freezed,}) {
  return _then(_self.copyWith(
historyState: freezed == historyState ? _self.historyState : historyState // ignore: cast_nullable_to_non_nullable
as BaseState<List<ExamHistoryEntity>>?,
  ));
}
/// Create a copy of ExamHistoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStateCopyWith<List<ExamHistoryEntity>, $Res>? get historyState {
    if (_self.historyState == null) {
    return null;
  }

  return $BaseStateCopyWith<List<ExamHistoryEntity>, $Res>(_self.historyState!, (value) {
    return _then(_self.copyWith(historyState: value));
  });
}
}


/// Adds pattern-matching-related methods to [ExamHistoryState].
extension ExamHistoryStatePatterns on ExamHistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamHistoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamHistoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamHistoryState value)  $default,){
final _that = this;
switch (_that) {
case _ExamHistoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamHistoryState value)?  $default,){
final _that = this;
switch (_that) {
case _ExamHistoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseState<List<ExamHistoryEntity>>? historyState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamHistoryState() when $default != null:
return $default(_that.historyState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseState<List<ExamHistoryEntity>>? historyState)  $default,) {final _that = this;
switch (_that) {
case _ExamHistoryState():
return $default(_that.historyState);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseState<List<ExamHistoryEntity>>? historyState)?  $default,) {final _that = this;
switch (_that) {
case _ExamHistoryState() when $default != null:
return $default(_that.historyState);case _:
  return null;

}
}

}

/// @nodoc


class _ExamHistoryState implements ExamHistoryState {
  const _ExamHistoryState({this.historyState});
  

@override final  BaseState<List<ExamHistoryEntity>>? historyState;

/// Create a copy of ExamHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamHistoryStateCopyWith<_ExamHistoryState> get copyWith => __$ExamHistoryStateCopyWithImpl<_ExamHistoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamHistoryState&&(identical(other.historyState, historyState) || other.historyState == historyState));
}


@override
int get hashCode => Object.hash(runtimeType,historyState);

@override
String toString() {
  return 'ExamHistoryState(historyState: $historyState)';
}


}

/// @nodoc
abstract mixin class _$ExamHistoryStateCopyWith<$Res> implements $ExamHistoryStateCopyWith<$Res> {
  factory _$ExamHistoryStateCopyWith(_ExamHistoryState value, $Res Function(_ExamHistoryState) _then) = __$ExamHistoryStateCopyWithImpl;
@override @useResult
$Res call({
 BaseState<List<ExamHistoryEntity>>? historyState
});


@override $BaseStateCopyWith<List<ExamHistoryEntity>, $Res>? get historyState;

}
/// @nodoc
class __$ExamHistoryStateCopyWithImpl<$Res>
    implements _$ExamHistoryStateCopyWith<$Res> {
  __$ExamHistoryStateCopyWithImpl(this._self, this._then);

  final _ExamHistoryState _self;
  final $Res Function(_ExamHistoryState) _then;

/// Create a copy of ExamHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? historyState = freezed,}) {
  return _then(_ExamHistoryState(
historyState: freezed == historyState ? _self.historyState : historyState // ignore: cast_nullable_to_non_nullable
as BaseState<List<ExamHistoryEntity>>?,
  ));
}

/// Create a copy of ExamHistoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStateCopyWith<List<ExamHistoryEntity>, $Res>? get historyState {
    if (_self.historyState == null) {
    return null;
  }

  return $BaseStateCopyWith<List<ExamHistoryEntity>, $Res>(_self.historyState!, (value) {
    return _then(_self.copyWith(historyState: value));
  });
}
}

// dart format on
