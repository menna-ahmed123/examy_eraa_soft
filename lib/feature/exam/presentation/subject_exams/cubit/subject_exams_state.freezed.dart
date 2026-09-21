// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_exams_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubjectExamsState {

 BaseState<List<ExamEntity>>? get examsState; List<ExamHistoryEntity> get history;
/// Create a copy of SubjectExamsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubjectExamsStateCopyWith<SubjectExamsState> get copyWith => _$SubjectExamsStateCopyWithImpl<SubjectExamsState>(this as SubjectExamsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubjectExamsState&&(identical(other.examsState, examsState) || other.examsState == examsState)&&const DeepCollectionEquality().equals(other.history, history));
}


@override
int get hashCode => Object.hash(runtimeType,examsState,const DeepCollectionEquality().hash(history));

@override
String toString() {
  return 'SubjectExamsState(examsState: $examsState, history: $history)';
}


}

/// @nodoc
abstract mixin class $SubjectExamsStateCopyWith<$Res>  {
  factory $SubjectExamsStateCopyWith(SubjectExamsState value, $Res Function(SubjectExamsState) _then) = _$SubjectExamsStateCopyWithImpl;
@useResult
$Res call({
 BaseState<List<ExamEntity>>? examsState, List<ExamHistoryEntity> history
});


$BaseStateCopyWith<List<ExamEntity>, $Res>? get examsState;

}
/// @nodoc
class _$SubjectExamsStateCopyWithImpl<$Res>
    implements $SubjectExamsStateCopyWith<$Res> {
  _$SubjectExamsStateCopyWithImpl(this._self, this._then);

  final SubjectExamsState _self;
  final $Res Function(SubjectExamsState) _then;

/// Create a copy of SubjectExamsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? examsState = freezed,Object? history = null,}) {
  return _then(_self.copyWith(
examsState: freezed == examsState ? _self.examsState : examsState // ignore: cast_nullable_to_non_nullable
as BaseState<List<ExamEntity>>?,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<ExamHistoryEntity>,
  ));
}
/// Create a copy of SubjectExamsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStateCopyWith<List<ExamEntity>, $Res>? get examsState {
    if (_self.examsState == null) {
    return null;
  }

  return $BaseStateCopyWith<List<ExamEntity>, $Res>(_self.examsState!, (value) {
    return _then(_self.copyWith(examsState: value));
  });
}
}


/// Adds pattern-matching-related methods to [SubjectExamsState].
extension SubjectExamsStatePatterns on SubjectExamsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubjectExamsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubjectExamsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubjectExamsState value)  $default,){
final _that = this;
switch (_that) {
case _SubjectExamsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubjectExamsState value)?  $default,){
final _that = this;
switch (_that) {
case _SubjectExamsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseState<List<ExamEntity>>? examsState,  List<ExamHistoryEntity> history)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubjectExamsState() when $default != null:
return $default(_that.examsState,_that.history);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseState<List<ExamEntity>>? examsState,  List<ExamHistoryEntity> history)  $default,) {final _that = this;
switch (_that) {
case _SubjectExamsState():
return $default(_that.examsState,_that.history);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseState<List<ExamEntity>>? examsState,  List<ExamHistoryEntity> history)?  $default,) {final _that = this;
switch (_that) {
case _SubjectExamsState() when $default != null:
return $default(_that.examsState,_that.history);case _:
  return null;

}
}

}

/// @nodoc


class _SubjectExamsState implements SubjectExamsState {
  const _SubjectExamsState({this.examsState, final  List<ExamHistoryEntity> history = const <ExamHistoryEntity>[]}): _history = history;
  

@override final  BaseState<List<ExamEntity>>? examsState;
 final  List<ExamHistoryEntity> _history;
@override@JsonKey() List<ExamHistoryEntity> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}


/// Create a copy of SubjectExamsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubjectExamsStateCopyWith<_SubjectExamsState> get copyWith => __$SubjectExamsStateCopyWithImpl<_SubjectExamsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubjectExamsState&&(identical(other.examsState, examsState) || other.examsState == examsState)&&const DeepCollectionEquality().equals(other._history, _history));
}


@override
int get hashCode => Object.hash(runtimeType,examsState,const DeepCollectionEquality().hash(_history));

@override
String toString() {
  return 'SubjectExamsState(examsState: $examsState, history: $history)';
}


}

/// @nodoc
abstract mixin class _$SubjectExamsStateCopyWith<$Res> implements $SubjectExamsStateCopyWith<$Res> {
  factory _$SubjectExamsStateCopyWith(_SubjectExamsState value, $Res Function(_SubjectExamsState) _then) = __$SubjectExamsStateCopyWithImpl;
@override @useResult
$Res call({
 BaseState<List<ExamEntity>>? examsState, List<ExamHistoryEntity> history
});


@override $BaseStateCopyWith<List<ExamEntity>, $Res>? get examsState;

}
/// @nodoc
class __$SubjectExamsStateCopyWithImpl<$Res>
    implements _$SubjectExamsStateCopyWith<$Res> {
  __$SubjectExamsStateCopyWithImpl(this._self, this._then);

  final _SubjectExamsState _self;
  final $Res Function(_SubjectExamsState) _then;

/// Create a copy of SubjectExamsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? examsState = freezed,Object? history = null,}) {
  return _then(_SubjectExamsState(
examsState: freezed == examsState ? _self.examsState : examsState // ignore: cast_nullable_to_non_nullable
as BaseState<List<ExamEntity>>?,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<ExamHistoryEntity>,
  ));
}

/// Create a copy of SubjectExamsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStateCopyWith<List<ExamEntity>, $Res>? get examsState {
    if (_self.examsState == null) {
    return null;
  }

  return $BaseStateCopyWith<List<ExamEntity>, $Res>(_self.examsState!, (value) {
    return _then(_self.copyWith(examsState: value));
  });
}
}

// dart format on
