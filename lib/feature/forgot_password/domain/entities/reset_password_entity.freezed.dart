// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ResetPasswordEntity {

 String get email; String get newPassword;
/// Create a copy of ResetPasswordEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasswordEntityCopyWith<ResetPasswordEntity> get copyWith => _$ResetPasswordEntityCopyWithImpl<ResetPasswordEntity>(this as ResetPasswordEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordEntity&&(identical(other.email, email) || other.email == email)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}


@override
int get hashCode => Object.hash(runtimeType,email,newPassword);

@override
String toString() {
  return 'ResetPasswordEntity(email: $email, newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class $ResetPasswordEntityCopyWith<$Res>  {
  factory $ResetPasswordEntityCopyWith(ResetPasswordEntity value, $Res Function(ResetPasswordEntity) _then) = _$ResetPasswordEntityCopyWithImpl;
@useResult
$Res call({
 String email, String newPassword
});




}
/// @nodoc
class _$ResetPasswordEntityCopyWithImpl<$Res>
    implements $ResetPasswordEntityCopyWith<$Res> {
  _$ResetPasswordEntityCopyWithImpl(this._self, this._then);

  final ResetPasswordEntity _self;
  final $Res Function(ResetPasswordEntity) _then;

/// Create a copy of ResetPasswordEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? newPassword = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ResetPasswordEntity].
extension ResetPasswordEntityPatterns on ResetPasswordEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResetPasswordEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResetPasswordEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResetPasswordEntity value)  $default,){
final _that = this;
switch (_that) {
case _ResetPasswordEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResetPasswordEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ResetPasswordEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String newPassword)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResetPasswordEntity() when $default != null:
return $default(_that.email,_that.newPassword);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String newPassword)  $default,) {final _that = this;
switch (_that) {
case _ResetPasswordEntity():
return $default(_that.email,_that.newPassword);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String newPassword)?  $default,) {final _that = this;
switch (_that) {
case _ResetPasswordEntity() when $default != null:
return $default(_that.email,_that.newPassword);case _:
  return null;

}
}

}

/// @nodoc


class _ResetPasswordEntity implements ResetPasswordEntity {
  const _ResetPasswordEntity({required this.email, required this.newPassword});
  

@override final  String email;
@override final  String newPassword;

/// Create a copy of ResetPasswordEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResetPasswordEntityCopyWith<_ResetPasswordEntity> get copyWith => __$ResetPasswordEntityCopyWithImpl<_ResetPasswordEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetPasswordEntity&&(identical(other.email, email) || other.email == email)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}


@override
int get hashCode => Object.hash(runtimeType,email,newPassword);

@override
String toString() {
  return 'ResetPasswordEntity(email: $email, newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class _$ResetPasswordEntityCopyWith<$Res> implements $ResetPasswordEntityCopyWith<$Res> {
  factory _$ResetPasswordEntityCopyWith(_ResetPasswordEntity value, $Res Function(_ResetPasswordEntity) _then) = __$ResetPasswordEntityCopyWithImpl;
@override @useResult
$Res call({
 String email, String newPassword
});




}
/// @nodoc
class __$ResetPasswordEntityCopyWithImpl<$Res>
    implements _$ResetPasswordEntityCopyWith<$Res> {
  __$ResetPasswordEntityCopyWithImpl(this._self, this._then);

  final _ResetPasswordEntity _self;
  final $Res Function(_ResetPasswordEntity) _then;

/// Create a copy of ResetPasswordEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? newPassword = null,}) {
  return _then(_ResetPasswordEntity(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
