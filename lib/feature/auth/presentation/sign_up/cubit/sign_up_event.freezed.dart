// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpEvent {

 SignUpEntity get signUpEntity;
/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpEventCopyWith<SignUpEvent> get copyWith => _$SignUpEventCopyWithImpl<SignUpEvent>(this as SignUpEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpEvent&&(identical(other.signUpEntity, signUpEntity) || other.signUpEntity == signUpEntity));
}


@override
int get hashCode => Object.hash(runtimeType,signUpEntity);

@override
String toString() {
  return 'SignUpEvent(signUpEntity: $signUpEntity)';
}


}

/// @nodoc
abstract mixin class $SignUpEventCopyWith<$Res>  {
  factory $SignUpEventCopyWith(SignUpEvent value, $Res Function(SignUpEvent) _then) = _$SignUpEventCopyWithImpl;
@useResult
$Res call({
 SignUpEntity signUpEntity
});


$SignUpEntityCopyWith<$Res> get signUpEntity;

}
/// @nodoc
class _$SignUpEventCopyWithImpl<$Res>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._self, this._then);

  final SignUpEvent _self;
  final $Res Function(SignUpEvent) _then;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? signUpEntity = null,}) {
  return _then(_self.copyWith(
signUpEntity: null == signUpEntity ? _self.signUpEntity : signUpEntity // ignore: cast_nullable_to_non_nullable
as SignUpEntity,
  ));
}
/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignUpEntityCopyWith<$Res> get signUpEntity {
  
  return $SignUpEntityCopyWith<$Res>(_self.signUpEntity, (value) {
    return _then(_self.copyWith(signUpEntity: value));
  });
}
}


/// Adds pattern-matching-related methods to [SignUpEvent].
extension SignUpEventPatterns on SignUpEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SignUpSubmitted value)?  submitted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SignUpSubmitted() when submitted != null:
return submitted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SignUpSubmitted value)  submitted,}){
final _that = this;
switch (_that) {
case SignUpSubmitted():
return submitted(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SignUpSubmitted value)?  submitted,}){
final _that = this;
switch (_that) {
case SignUpSubmitted() when submitted != null:
return submitted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( SignUpEntity signUpEntity)?  submitted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SignUpSubmitted() when submitted != null:
return submitted(_that.signUpEntity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( SignUpEntity signUpEntity)  submitted,}) {final _that = this;
switch (_that) {
case SignUpSubmitted():
return submitted(_that.signUpEntity);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( SignUpEntity signUpEntity)?  submitted,}) {final _that = this;
switch (_that) {
case SignUpSubmitted() when submitted != null:
return submitted(_that.signUpEntity);case _:
  return null;

}
}

}

/// @nodoc


class SignUpSubmitted implements SignUpEvent {
  const SignUpSubmitted({required this.signUpEntity});
  

@override final  SignUpEntity signUpEntity;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpSubmittedCopyWith<SignUpSubmitted> get copyWith => _$SignUpSubmittedCopyWithImpl<SignUpSubmitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpSubmitted&&(identical(other.signUpEntity, signUpEntity) || other.signUpEntity == signUpEntity));
}


@override
int get hashCode => Object.hash(runtimeType,signUpEntity);

@override
String toString() {
  return 'SignUpEvent.submitted(signUpEntity: $signUpEntity)';
}


}

/// @nodoc
abstract mixin class $SignUpSubmittedCopyWith<$Res> implements $SignUpEventCopyWith<$Res> {
  factory $SignUpSubmittedCopyWith(SignUpSubmitted value, $Res Function(SignUpSubmitted) _then) = _$SignUpSubmittedCopyWithImpl;
@override @useResult
$Res call({
 SignUpEntity signUpEntity
});


@override $SignUpEntityCopyWith<$Res> get signUpEntity;

}
/// @nodoc
class _$SignUpSubmittedCopyWithImpl<$Res>
    implements $SignUpSubmittedCopyWith<$Res> {
  _$SignUpSubmittedCopyWithImpl(this._self, this._then);

  final SignUpSubmitted _self;
  final $Res Function(SignUpSubmitted) _then;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? signUpEntity = null,}) {
  return _then(SignUpSubmitted(
signUpEntity: null == signUpEntity ? _self.signUpEntity : signUpEntity // ignore: cast_nullable_to_non_nullable
as SignUpEntity,
  ));
}

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignUpEntityCopyWith<$Res> get signUpEntity {
  
  return $SignUpEntityCopyWith<$Res>(_self.signUpEntity, (value) {
    return _then(_self.copyWith(signUpEntity: value));
  });
}
}

// dart format on
