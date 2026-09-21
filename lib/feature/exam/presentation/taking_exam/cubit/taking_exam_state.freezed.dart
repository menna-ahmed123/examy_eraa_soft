// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'taking_exam_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TakingExamState {

 BaseState<List<QuestionEntity>>? get questionsState; BaseState<CheckResultEntity>? get submitState; int get currentIndex; Map<String, List<String>> get selectedAnswers; int get remainingSeconds; int get totalSeconds; bool get isTimedOut; bool get shouldNavigateToScore;
/// Create a copy of TakingExamState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TakingExamStateCopyWith<TakingExamState> get copyWith => _$TakingExamStateCopyWithImpl<TakingExamState>(this as TakingExamState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TakingExamState&&(identical(other.questionsState, questionsState) || other.questionsState == questionsState)&&(identical(other.submitState, submitState) || other.submitState == submitState)&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&const DeepCollectionEquality().equals(other.selectedAnswers, selectedAnswers)&&(identical(other.remainingSeconds, remainingSeconds) || other.remainingSeconds == remainingSeconds)&&(identical(other.totalSeconds, totalSeconds) || other.totalSeconds == totalSeconds)&&(identical(other.isTimedOut, isTimedOut) || other.isTimedOut == isTimedOut)&&(identical(other.shouldNavigateToScore, shouldNavigateToScore) || other.shouldNavigateToScore == shouldNavigateToScore));
}


@override
int get hashCode => Object.hash(runtimeType,questionsState,submitState,currentIndex,const DeepCollectionEquality().hash(selectedAnswers),remainingSeconds,totalSeconds,isTimedOut,shouldNavigateToScore);

@override
String toString() {
  return 'TakingExamState(questionsState: $questionsState, submitState: $submitState, currentIndex: $currentIndex, selectedAnswers: $selectedAnswers, remainingSeconds: $remainingSeconds, totalSeconds: $totalSeconds, isTimedOut: $isTimedOut, shouldNavigateToScore: $shouldNavigateToScore)';
}


}

/// @nodoc
abstract mixin class $TakingExamStateCopyWith<$Res>  {
  factory $TakingExamStateCopyWith(TakingExamState value, $Res Function(TakingExamState) _then) = _$TakingExamStateCopyWithImpl;
@useResult
$Res call({
 BaseState<List<QuestionEntity>>? questionsState, BaseState<CheckResultEntity>? submitState, int currentIndex, Map<String, List<String>> selectedAnswers, int remainingSeconds, int totalSeconds, bool isTimedOut, bool shouldNavigateToScore
});


$BaseStateCopyWith<List<QuestionEntity>, $Res>? get questionsState;$BaseStateCopyWith<CheckResultEntity, $Res>? get submitState;

}
/// @nodoc
class _$TakingExamStateCopyWithImpl<$Res>
    implements $TakingExamStateCopyWith<$Res> {
  _$TakingExamStateCopyWithImpl(this._self, this._then);

  final TakingExamState _self;
  final $Res Function(TakingExamState) _then;

/// Create a copy of TakingExamState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? questionsState = freezed,Object? submitState = freezed,Object? currentIndex = null,Object? selectedAnswers = null,Object? remainingSeconds = null,Object? totalSeconds = null,Object? isTimedOut = null,Object? shouldNavigateToScore = null,}) {
  return _then(_self.copyWith(
questionsState: freezed == questionsState ? _self.questionsState : questionsState // ignore: cast_nullable_to_non_nullable
as BaseState<List<QuestionEntity>>?,submitState: freezed == submitState ? _self.submitState : submitState // ignore: cast_nullable_to_non_nullable
as BaseState<CheckResultEntity>?,currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,selectedAnswers: null == selectedAnswers ? _self.selectedAnswers : selectedAnswers // ignore: cast_nullable_to_non_nullable
as Map<String, List<String>>,remainingSeconds: null == remainingSeconds ? _self.remainingSeconds : remainingSeconds // ignore: cast_nullable_to_non_nullable
as int,totalSeconds: null == totalSeconds ? _self.totalSeconds : totalSeconds // ignore: cast_nullable_to_non_nullable
as int,isTimedOut: null == isTimedOut ? _self.isTimedOut : isTimedOut // ignore: cast_nullable_to_non_nullable
as bool,shouldNavigateToScore: null == shouldNavigateToScore ? _self.shouldNavigateToScore : shouldNavigateToScore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of TakingExamState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStateCopyWith<List<QuestionEntity>, $Res>? get questionsState {
    if (_self.questionsState == null) {
    return null;
  }

  return $BaseStateCopyWith<List<QuestionEntity>, $Res>(_self.questionsState!, (value) {
    return _then(_self.copyWith(questionsState: value));
  });
}/// Create a copy of TakingExamState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStateCopyWith<CheckResultEntity, $Res>? get submitState {
    if (_self.submitState == null) {
    return null;
  }

  return $BaseStateCopyWith<CheckResultEntity, $Res>(_self.submitState!, (value) {
    return _then(_self.copyWith(submitState: value));
  });
}
}


/// Adds pattern-matching-related methods to [TakingExamState].
extension TakingExamStatePatterns on TakingExamState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TakingExamState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TakingExamState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TakingExamState value)  $default,){
final _that = this;
switch (_that) {
case _TakingExamState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TakingExamState value)?  $default,){
final _that = this;
switch (_that) {
case _TakingExamState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BaseState<List<QuestionEntity>>? questionsState,  BaseState<CheckResultEntity>? submitState,  int currentIndex,  Map<String, List<String>> selectedAnswers,  int remainingSeconds,  int totalSeconds,  bool isTimedOut,  bool shouldNavigateToScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TakingExamState() when $default != null:
return $default(_that.questionsState,_that.submitState,_that.currentIndex,_that.selectedAnswers,_that.remainingSeconds,_that.totalSeconds,_that.isTimedOut,_that.shouldNavigateToScore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BaseState<List<QuestionEntity>>? questionsState,  BaseState<CheckResultEntity>? submitState,  int currentIndex,  Map<String, List<String>> selectedAnswers,  int remainingSeconds,  int totalSeconds,  bool isTimedOut,  bool shouldNavigateToScore)  $default,) {final _that = this;
switch (_that) {
case _TakingExamState():
return $default(_that.questionsState,_that.submitState,_that.currentIndex,_that.selectedAnswers,_that.remainingSeconds,_that.totalSeconds,_that.isTimedOut,_that.shouldNavigateToScore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BaseState<List<QuestionEntity>>? questionsState,  BaseState<CheckResultEntity>? submitState,  int currentIndex,  Map<String, List<String>> selectedAnswers,  int remainingSeconds,  int totalSeconds,  bool isTimedOut,  bool shouldNavigateToScore)?  $default,) {final _that = this;
switch (_that) {
case _TakingExamState() when $default != null:
return $default(_that.questionsState,_that.submitState,_that.currentIndex,_that.selectedAnswers,_that.remainingSeconds,_that.totalSeconds,_that.isTimedOut,_that.shouldNavigateToScore);case _:
  return null;

}
}

}

/// @nodoc


class _TakingExamState implements TakingExamState {
  const _TakingExamState({this.questionsState, this.submitState, this.currentIndex = 0, final  Map<String, List<String>> selectedAnswers = const <String, List<String>>{}, this.remainingSeconds = 0, this.totalSeconds = 0, this.isTimedOut = false, this.shouldNavigateToScore = false}): _selectedAnswers = selectedAnswers;
  

@override final  BaseState<List<QuestionEntity>>? questionsState;
@override final  BaseState<CheckResultEntity>? submitState;
@override@JsonKey() final  int currentIndex;
 final  Map<String, List<String>> _selectedAnswers;
@override@JsonKey() Map<String, List<String>> get selectedAnswers {
  if (_selectedAnswers is EqualUnmodifiableMapView) return _selectedAnswers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_selectedAnswers);
}

@override@JsonKey() final  int remainingSeconds;
@override@JsonKey() final  int totalSeconds;
@override@JsonKey() final  bool isTimedOut;
@override@JsonKey() final  bool shouldNavigateToScore;

/// Create a copy of TakingExamState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TakingExamStateCopyWith<_TakingExamState> get copyWith => __$TakingExamStateCopyWithImpl<_TakingExamState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TakingExamState&&(identical(other.questionsState, questionsState) || other.questionsState == questionsState)&&(identical(other.submitState, submitState) || other.submitState == submitState)&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&const DeepCollectionEquality().equals(other._selectedAnswers, _selectedAnswers)&&(identical(other.remainingSeconds, remainingSeconds) || other.remainingSeconds == remainingSeconds)&&(identical(other.totalSeconds, totalSeconds) || other.totalSeconds == totalSeconds)&&(identical(other.isTimedOut, isTimedOut) || other.isTimedOut == isTimedOut)&&(identical(other.shouldNavigateToScore, shouldNavigateToScore) || other.shouldNavigateToScore == shouldNavigateToScore));
}


@override
int get hashCode => Object.hash(runtimeType,questionsState,submitState,currentIndex,const DeepCollectionEquality().hash(_selectedAnswers),remainingSeconds,totalSeconds,isTimedOut,shouldNavigateToScore);

@override
String toString() {
  return 'TakingExamState(questionsState: $questionsState, submitState: $submitState, currentIndex: $currentIndex, selectedAnswers: $selectedAnswers, remainingSeconds: $remainingSeconds, totalSeconds: $totalSeconds, isTimedOut: $isTimedOut, shouldNavigateToScore: $shouldNavigateToScore)';
}


}

/// @nodoc
abstract mixin class _$TakingExamStateCopyWith<$Res> implements $TakingExamStateCopyWith<$Res> {
  factory _$TakingExamStateCopyWith(_TakingExamState value, $Res Function(_TakingExamState) _then) = __$TakingExamStateCopyWithImpl;
@override @useResult
$Res call({
 BaseState<List<QuestionEntity>>? questionsState, BaseState<CheckResultEntity>? submitState, int currentIndex, Map<String, List<String>> selectedAnswers, int remainingSeconds, int totalSeconds, bool isTimedOut, bool shouldNavigateToScore
});


@override $BaseStateCopyWith<List<QuestionEntity>, $Res>? get questionsState;@override $BaseStateCopyWith<CheckResultEntity, $Res>? get submitState;

}
/// @nodoc
class __$TakingExamStateCopyWithImpl<$Res>
    implements _$TakingExamStateCopyWith<$Res> {
  __$TakingExamStateCopyWithImpl(this._self, this._then);

  final _TakingExamState _self;
  final $Res Function(_TakingExamState) _then;

/// Create a copy of TakingExamState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? questionsState = freezed,Object? submitState = freezed,Object? currentIndex = null,Object? selectedAnswers = null,Object? remainingSeconds = null,Object? totalSeconds = null,Object? isTimedOut = null,Object? shouldNavigateToScore = null,}) {
  return _then(_TakingExamState(
questionsState: freezed == questionsState ? _self.questionsState : questionsState // ignore: cast_nullable_to_non_nullable
as BaseState<List<QuestionEntity>>?,submitState: freezed == submitState ? _self.submitState : submitState // ignore: cast_nullable_to_non_nullable
as BaseState<CheckResultEntity>?,currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,selectedAnswers: null == selectedAnswers ? _self._selectedAnswers : selectedAnswers // ignore: cast_nullable_to_non_nullable
as Map<String, List<String>>,remainingSeconds: null == remainingSeconds ? _self.remainingSeconds : remainingSeconds // ignore: cast_nullable_to_non_nullable
as int,totalSeconds: null == totalSeconds ? _self.totalSeconds : totalSeconds // ignore: cast_nullable_to_non_nullable
as int,isTimedOut: null == isTimedOut ? _self.isTimedOut : isTimedOut // ignore: cast_nullable_to_non_nullable
as bool,shouldNavigateToScore: null == shouldNavigateToScore ? _self.shouldNavigateToScore : shouldNavigateToScore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of TakingExamState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStateCopyWith<List<QuestionEntity>, $Res>? get questionsState {
    if (_self.questionsState == null) {
    return null;
  }

  return $BaseStateCopyWith<List<QuestionEntity>, $Res>(_self.questionsState!, (value) {
    return _then(_self.copyWith(questionsState: value));
  });
}/// Create a copy of TakingExamState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseStateCopyWith<CheckResultEntity, $Res>? get submitState {
    if (_self.submitState == null) {
    return null;
  }

  return $BaseStateCopyWith<CheckResultEntity, $Res>(_self.submitState!, (value) {
    return _then(_self.copyWith(submitState: value));
  });
}
}

// dart format on
