// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_verification_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EmailVerificationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailVerificationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmailVerificationEvent()';
}


}

/// @nodoc
class $EmailVerificationEventCopyWith<$Res>  {
$EmailVerificationEventCopyWith(EmailVerificationEvent _, $Res Function(EmailVerificationEvent) __);
}


/// Adds pattern-matching-related methods to [EmailVerificationEvent].
extension EmailVerificationEventPatterns on EmailVerificationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( VerifyResetCodeSubmitted value)?  verifySubmitted,TResult Function( ResendCodeRequested value)?  resendRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case VerifyResetCodeSubmitted() when verifySubmitted != null:
return verifySubmitted(_that);case ResendCodeRequested() when resendRequested != null:
return resendRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( VerifyResetCodeSubmitted value)  verifySubmitted,required TResult Function( ResendCodeRequested value)  resendRequested,}){
final _that = this;
switch (_that) {
case VerifyResetCodeSubmitted():
return verifySubmitted(_that);case ResendCodeRequested():
return resendRequested(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( VerifyResetCodeSubmitted value)?  verifySubmitted,TResult? Function( ResendCodeRequested value)?  resendRequested,}){
final _that = this;
switch (_that) {
case VerifyResetCodeSubmitted() when verifySubmitted != null:
return verifySubmitted(_that);case ResendCodeRequested() when resendRequested != null:
return resendRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String resetCode)?  verifySubmitted,TResult Function( String email)?  resendRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case VerifyResetCodeSubmitted() when verifySubmitted != null:
return verifySubmitted(_that.resetCode);case ResendCodeRequested() when resendRequested != null:
return resendRequested(_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String resetCode)  verifySubmitted,required TResult Function( String email)  resendRequested,}) {final _that = this;
switch (_that) {
case VerifyResetCodeSubmitted():
return verifySubmitted(_that.resetCode);case ResendCodeRequested():
return resendRequested(_that.email);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String resetCode)?  verifySubmitted,TResult? Function( String email)?  resendRequested,}) {final _that = this;
switch (_that) {
case VerifyResetCodeSubmitted() when verifySubmitted != null:
return verifySubmitted(_that.resetCode);case ResendCodeRequested() when resendRequested != null:
return resendRequested(_that.email);case _:
  return null;

}
}

}

/// @nodoc


class VerifyResetCodeSubmitted implements EmailVerificationEvent {
  const VerifyResetCodeSubmitted({required this.resetCode});
  

 final  String resetCode;

/// Create a copy of EmailVerificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyResetCodeSubmittedCopyWith<VerifyResetCodeSubmitted> get copyWith => _$VerifyResetCodeSubmittedCopyWithImpl<VerifyResetCodeSubmitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyResetCodeSubmitted&&(identical(other.resetCode, resetCode) || other.resetCode == resetCode));
}


@override
int get hashCode => Object.hash(runtimeType,resetCode);

@override
String toString() {
  return 'EmailVerificationEvent.verifySubmitted(resetCode: $resetCode)';
}


}

/// @nodoc
abstract mixin class $VerifyResetCodeSubmittedCopyWith<$Res> implements $EmailVerificationEventCopyWith<$Res> {
  factory $VerifyResetCodeSubmittedCopyWith(VerifyResetCodeSubmitted value, $Res Function(VerifyResetCodeSubmitted) _then) = _$VerifyResetCodeSubmittedCopyWithImpl;
@useResult
$Res call({
 String resetCode
});




}
/// @nodoc
class _$VerifyResetCodeSubmittedCopyWithImpl<$Res>
    implements $VerifyResetCodeSubmittedCopyWith<$Res> {
  _$VerifyResetCodeSubmittedCopyWithImpl(this._self, this._then);

  final VerifyResetCodeSubmitted _self;
  final $Res Function(VerifyResetCodeSubmitted) _then;

/// Create a copy of EmailVerificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? resetCode = null,}) {
  return _then(VerifyResetCodeSubmitted(
resetCode: null == resetCode ? _self.resetCode : resetCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ResendCodeRequested implements EmailVerificationEvent {
  const ResendCodeRequested({required this.email});
  

 final  String email;

/// Create a copy of EmailVerificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResendCodeRequestedCopyWith<ResendCodeRequested> get copyWith => _$ResendCodeRequestedCopyWithImpl<ResendCodeRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResendCodeRequested&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'EmailVerificationEvent.resendRequested(email: $email)';
}


}

/// @nodoc
abstract mixin class $ResendCodeRequestedCopyWith<$Res> implements $EmailVerificationEventCopyWith<$Res> {
  factory $ResendCodeRequestedCopyWith(ResendCodeRequested value, $Res Function(ResendCodeRequested) _then) = _$ResendCodeRequestedCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$ResendCodeRequestedCopyWithImpl<$Res>
    implements $ResendCodeRequestedCopyWith<$Res> {
  _$ResendCodeRequestedCopyWithImpl(this._self, this._then);

  final ResendCodeRequested _self;
  final $Res Function(ResendCodeRequested) _then;

/// Create a copy of EmailVerificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(ResendCodeRequested(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
