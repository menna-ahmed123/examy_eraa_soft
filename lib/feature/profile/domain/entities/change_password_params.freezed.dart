// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChangePasswordParams {

 String get oldPassword; String get password; String get rePassword;
/// Create a copy of ChangePasswordParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePasswordParamsCopyWith<ChangePasswordParams> get copyWith => _$ChangePasswordParamsCopyWithImpl<ChangePasswordParams>(this as ChangePasswordParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordParams&&(identical(other.oldPassword, oldPassword) || other.oldPassword == oldPassword)&&(identical(other.password, password) || other.password == password)&&(identical(other.rePassword, rePassword) || other.rePassword == rePassword));
}


@override
int get hashCode => Object.hash(runtimeType,oldPassword,password,rePassword);

@override
String toString() {
  return 'ChangePasswordParams(oldPassword: $oldPassword, password: $password, rePassword: $rePassword)';
}


}

/// @nodoc
abstract mixin class $ChangePasswordParamsCopyWith<$Res>  {
  factory $ChangePasswordParamsCopyWith(ChangePasswordParams value, $Res Function(ChangePasswordParams) _then) = _$ChangePasswordParamsCopyWithImpl;
@useResult
$Res call({
 String oldPassword, String password, String rePassword
});




}
/// @nodoc
class _$ChangePasswordParamsCopyWithImpl<$Res>
    implements $ChangePasswordParamsCopyWith<$Res> {
  _$ChangePasswordParamsCopyWithImpl(this._self, this._then);

  final ChangePasswordParams _self;
  final $Res Function(ChangePasswordParams) _then;

/// Create a copy of ChangePasswordParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? oldPassword = null,Object? password = null,Object? rePassword = null,}) {
  return _then(_self.copyWith(
oldPassword: null == oldPassword ? _self.oldPassword : oldPassword // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,rePassword: null == rePassword ? _self.rePassword : rePassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChangePasswordParams].
extension ChangePasswordParamsPatterns on ChangePasswordParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangePasswordParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangePasswordParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangePasswordParams value)  $default,){
final _that = this;
switch (_that) {
case _ChangePasswordParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangePasswordParams value)?  $default,){
final _that = this;
switch (_that) {
case _ChangePasswordParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String oldPassword,  String password,  String rePassword)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangePasswordParams() when $default != null:
return $default(_that.oldPassword,_that.password,_that.rePassword);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String oldPassword,  String password,  String rePassword)  $default,) {final _that = this;
switch (_that) {
case _ChangePasswordParams():
return $default(_that.oldPassword,_that.password,_that.rePassword);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String oldPassword,  String password,  String rePassword)?  $default,) {final _that = this;
switch (_that) {
case _ChangePasswordParams() when $default != null:
return $default(_that.oldPassword,_that.password,_that.rePassword);case _:
  return null;

}
}

}

/// @nodoc


class _ChangePasswordParams implements ChangePasswordParams {
  const _ChangePasswordParams({required this.oldPassword, required this.password, required this.rePassword});
  

@override final  String oldPassword;
@override final  String password;
@override final  String rePassword;

/// Create a copy of ChangePasswordParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangePasswordParamsCopyWith<_ChangePasswordParams> get copyWith => __$ChangePasswordParamsCopyWithImpl<_ChangePasswordParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangePasswordParams&&(identical(other.oldPassword, oldPassword) || other.oldPassword == oldPassword)&&(identical(other.password, password) || other.password == password)&&(identical(other.rePassword, rePassword) || other.rePassword == rePassword));
}


@override
int get hashCode => Object.hash(runtimeType,oldPassword,password,rePassword);

@override
String toString() {
  return 'ChangePasswordParams(oldPassword: $oldPassword, password: $password, rePassword: $rePassword)';
}


}

/// @nodoc
abstract mixin class _$ChangePasswordParamsCopyWith<$Res> implements $ChangePasswordParamsCopyWith<$Res> {
  factory _$ChangePasswordParamsCopyWith(_ChangePasswordParams value, $Res Function(_ChangePasswordParams) _then) = __$ChangePasswordParamsCopyWithImpl;
@override @useResult
$Res call({
 String oldPassword, String password, String rePassword
});




}
/// @nodoc
class __$ChangePasswordParamsCopyWithImpl<$Res>
    implements _$ChangePasswordParamsCopyWith<$Res> {
  __$ChangePasswordParamsCopyWithImpl(this._self, this._then);

  final _ChangePasswordParams _self;
  final $Res Function(_ChangePasswordParams) _then;

/// Create a copy of ChangePasswordParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? oldPassword = null,Object? password = null,Object? rePassword = null,}) {
  return _then(_ChangePasswordParams(
oldPassword: null == oldPassword ? _self.oldPassword : oldPassword // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,rePassword: null == rePassword ? _self.rePassword : rePassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
