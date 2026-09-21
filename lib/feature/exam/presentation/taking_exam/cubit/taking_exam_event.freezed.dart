// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'taking_exam_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TakingExamEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TakingExamEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TakingExamEvent()';
}


}

/// @nodoc
class $TakingExamEventCopyWith<$Res>  {
$TakingExamEventCopyWith(TakingExamEvent _, $Res Function(TakingExamEvent) __);
}


/// Adds pattern-matching-related methods to [TakingExamEvent].
extension TakingExamEventPatterns on TakingExamEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TakingExamStarted value)?  started,TResult Function( TakingExamSelectAnswer value)?  selectAnswer,TResult Function( TakingExamNext value)?  next,TResult Function( TakingExamBack value)?  back,TResult Function( TakingExamFinish value)?  finish,TResult Function( TakingExamTimerTick value)?  timerTick,TResult Function( TakingExamViewScoreAfterTimeout value)?  viewScoreAfterTimeout,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TakingExamStarted() when started != null:
return started(_that);case TakingExamSelectAnswer() when selectAnswer != null:
return selectAnswer(_that);case TakingExamNext() when next != null:
return next(_that);case TakingExamBack() when back != null:
return back(_that);case TakingExamFinish() when finish != null:
return finish(_that);case TakingExamTimerTick() when timerTick != null:
return timerTick(_that);case TakingExamViewScoreAfterTimeout() when viewScoreAfterTimeout != null:
return viewScoreAfterTimeout(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TakingExamStarted value)  started,required TResult Function( TakingExamSelectAnswer value)  selectAnswer,required TResult Function( TakingExamNext value)  next,required TResult Function( TakingExamBack value)  back,required TResult Function( TakingExamFinish value)  finish,required TResult Function( TakingExamTimerTick value)  timerTick,required TResult Function( TakingExamViewScoreAfterTimeout value)  viewScoreAfterTimeout,}){
final _that = this;
switch (_that) {
case TakingExamStarted():
return started(_that);case TakingExamSelectAnswer():
return selectAnswer(_that);case TakingExamNext():
return next(_that);case TakingExamBack():
return back(_that);case TakingExamFinish():
return finish(_that);case TakingExamTimerTick():
return timerTick(_that);case TakingExamViewScoreAfterTimeout():
return viewScoreAfterTimeout(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TakingExamStarted value)?  started,TResult? Function( TakingExamSelectAnswer value)?  selectAnswer,TResult? Function( TakingExamNext value)?  next,TResult? Function( TakingExamBack value)?  back,TResult? Function( TakingExamFinish value)?  finish,TResult? Function( TakingExamTimerTick value)?  timerTick,TResult? Function( TakingExamViewScoreAfterTimeout value)?  viewScoreAfterTimeout,}){
final _that = this;
switch (_that) {
case TakingExamStarted() when started != null:
return started(_that);case TakingExamSelectAnswer() when selectAnswer != null:
return selectAnswer(_that);case TakingExamNext() when next != null:
return next(_that);case TakingExamBack() when back != null:
return back(_that);case TakingExamFinish() when finish != null:
return finish(_that);case TakingExamTimerTick() when timerTick != null:
return timerTick(_that);case TakingExamViewScoreAfterTimeout() when viewScoreAfterTimeout != null:
return viewScoreAfterTimeout(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ExamSessionArgs session)?  started,TResult Function( String answerKey)?  selectAnswer,TResult Function()?  next,TResult Function()?  back,TResult Function()?  finish,TResult Function()?  timerTick,TResult Function()?  viewScoreAfterTimeout,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TakingExamStarted() when started != null:
return started(_that.session);case TakingExamSelectAnswer() when selectAnswer != null:
return selectAnswer(_that.answerKey);case TakingExamNext() when next != null:
return next();case TakingExamBack() when back != null:
return back();case TakingExamFinish() when finish != null:
return finish();case TakingExamTimerTick() when timerTick != null:
return timerTick();case TakingExamViewScoreAfterTimeout() when viewScoreAfterTimeout != null:
return viewScoreAfterTimeout();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ExamSessionArgs session)  started,required TResult Function( String answerKey)  selectAnswer,required TResult Function()  next,required TResult Function()  back,required TResult Function()  finish,required TResult Function()  timerTick,required TResult Function()  viewScoreAfterTimeout,}) {final _that = this;
switch (_that) {
case TakingExamStarted():
return started(_that.session);case TakingExamSelectAnswer():
return selectAnswer(_that.answerKey);case TakingExamNext():
return next();case TakingExamBack():
return back();case TakingExamFinish():
return finish();case TakingExamTimerTick():
return timerTick();case TakingExamViewScoreAfterTimeout():
return viewScoreAfterTimeout();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ExamSessionArgs session)?  started,TResult? Function( String answerKey)?  selectAnswer,TResult? Function()?  next,TResult? Function()?  back,TResult? Function()?  finish,TResult? Function()?  timerTick,TResult? Function()?  viewScoreAfterTimeout,}) {final _that = this;
switch (_that) {
case TakingExamStarted() when started != null:
return started(_that.session);case TakingExamSelectAnswer() when selectAnswer != null:
return selectAnswer(_that.answerKey);case TakingExamNext() when next != null:
return next();case TakingExamBack() when back != null:
return back();case TakingExamFinish() when finish != null:
return finish();case TakingExamTimerTick() when timerTick != null:
return timerTick();case TakingExamViewScoreAfterTimeout() when viewScoreAfterTimeout != null:
return viewScoreAfterTimeout();case _:
  return null;

}
}

}

/// @nodoc


class TakingExamStarted implements TakingExamEvent {
  const TakingExamStarted({required this.session});
  

 final  ExamSessionArgs session;

/// Create a copy of TakingExamEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TakingExamStartedCopyWith<TakingExamStarted> get copyWith => _$TakingExamStartedCopyWithImpl<TakingExamStarted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TakingExamStarted&&(identical(other.session, session) || other.session == session));
}


@override
int get hashCode => Object.hash(runtimeType,session);

@override
String toString() {
  return 'TakingExamEvent.started(session: $session)';
}


}

/// @nodoc
abstract mixin class $TakingExamStartedCopyWith<$Res> implements $TakingExamEventCopyWith<$Res> {
  factory $TakingExamStartedCopyWith(TakingExamStarted value, $Res Function(TakingExamStarted) _then) = _$TakingExamStartedCopyWithImpl;
@useResult
$Res call({
 ExamSessionArgs session
});


$ExamSessionArgsCopyWith<$Res> get session;

}
/// @nodoc
class _$TakingExamStartedCopyWithImpl<$Res>
    implements $TakingExamStartedCopyWith<$Res> {
  _$TakingExamStartedCopyWithImpl(this._self, this._then);

  final TakingExamStarted _self;
  final $Res Function(TakingExamStarted) _then;

/// Create a copy of TakingExamEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? session = null,}) {
  return _then(TakingExamStarted(
session: null == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as ExamSessionArgs,
  ));
}

/// Create a copy of TakingExamEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExamSessionArgsCopyWith<$Res> get session {
  
  return $ExamSessionArgsCopyWith<$Res>(_self.session, (value) {
    return _then(_self.copyWith(session: value));
  });
}
}

/// @nodoc


class TakingExamSelectAnswer implements TakingExamEvent {
  const TakingExamSelectAnswer(this.answerKey);
  

 final  String answerKey;

/// Create a copy of TakingExamEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TakingExamSelectAnswerCopyWith<TakingExamSelectAnswer> get copyWith => _$TakingExamSelectAnswerCopyWithImpl<TakingExamSelectAnswer>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TakingExamSelectAnswer&&(identical(other.answerKey, answerKey) || other.answerKey == answerKey));
}


@override
int get hashCode => Object.hash(runtimeType,answerKey);

@override
String toString() {
  return 'TakingExamEvent.selectAnswer(answerKey: $answerKey)';
}


}

/// @nodoc
abstract mixin class $TakingExamSelectAnswerCopyWith<$Res> implements $TakingExamEventCopyWith<$Res> {
  factory $TakingExamSelectAnswerCopyWith(TakingExamSelectAnswer value, $Res Function(TakingExamSelectAnswer) _then) = _$TakingExamSelectAnswerCopyWithImpl;
@useResult
$Res call({
 String answerKey
});




}
/// @nodoc
class _$TakingExamSelectAnswerCopyWithImpl<$Res>
    implements $TakingExamSelectAnswerCopyWith<$Res> {
  _$TakingExamSelectAnswerCopyWithImpl(this._self, this._then);

  final TakingExamSelectAnswer _self;
  final $Res Function(TakingExamSelectAnswer) _then;

/// Create a copy of TakingExamEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? answerKey = null,}) {
  return _then(TakingExamSelectAnswer(
null == answerKey ? _self.answerKey : answerKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TakingExamNext implements TakingExamEvent {
  const TakingExamNext();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TakingExamNext);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TakingExamEvent.next()';
}


}




/// @nodoc


class TakingExamBack implements TakingExamEvent {
  const TakingExamBack();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TakingExamBack);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TakingExamEvent.back()';
}


}




/// @nodoc


class TakingExamFinish implements TakingExamEvent {
  const TakingExamFinish();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TakingExamFinish);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TakingExamEvent.finish()';
}


}




/// @nodoc


class TakingExamTimerTick implements TakingExamEvent {
  const TakingExamTimerTick();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TakingExamTimerTick);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TakingExamEvent.timerTick()';
}


}




/// @nodoc


class TakingExamViewScoreAfterTimeout implements TakingExamEvent {
  const TakingExamViewScoreAfterTimeout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TakingExamViewScoreAfterTimeout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TakingExamEvent.viewScoreAfterTimeout()';
}


}




// dart format on
