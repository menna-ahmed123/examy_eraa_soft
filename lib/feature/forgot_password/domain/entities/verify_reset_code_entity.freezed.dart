// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_reset_code_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VerifyResetCodeEntity {

 String get resetCode;
/// Create a copy of VerifyResetCodeEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyResetCodeEntityCopyWith<VerifyResetCodeEntity> get copyWith => _$VerifyResetCodeEntityCopyWithImpl<VerifyResetCodeEntity>(this as VerifyResetCodeEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyResetCodeEntity&&(identical(other.resetCode, resetCode) || other.resetCode == resetCode));
}


@override
int get hashCode => Object.hash(runtimeType,resetCode);

@override
String toString() {
  return 'VerifyResetCodeEntity(resetCode: $resetCode)';
}


}

/// @nodoc
abstract mixin class $VerifyResetCodeEntityCopyWith<$Res>  {
  factory $VerifyResetCodeEntityCopyWith(VerifyResetCodeEntity value, $Res Function(VerifyResetCodeEntity) _then) = _$VerifyResetCodeEntityCopyWithImpl;
@useResult
$Res call({
 String resetCode
});




}
/// @nodoc
class _$VerifyResetCodeEntityCopyWithImpl<$Res>
    implements $VerifyResetCodeEntityCopyWith<$Res> {
  _$VerifyResetCodeEntityCopyWithImpl(this._self, this._then);

  final VerifyResetCodeEntity _self;
  final $Res Function(VerifyResetCodeEntity) _then;

/// Create a copy of VerifyResetCodeEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? resetCode = null,}) {
  return _then(_self.copyWith(
resetCode: null == resetCode ? _self.resetCode : resetCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyResetCodeEntity].
extension VerifyResetCodeEntityPatterns on VerifyResetCodeEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyResetCodeEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyResetCodeEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyResetCodeEntity value)  $default,){
final _that = this;
switch (_that) {
case _VerifyResetCodeEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyResetCodeEntity value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyResetCodeEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String resetCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyResetCodeEntity() when $default != null:
return $default(_that.resetCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String resetCode)  $default,) {final _that = this;
switch (_that) {
case _VerifyResetCodeEntity():
return $default(_that.resetCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String resetCode)?  $default,) {final _that = this;
switch (_that) {
case _VerifyResetCodeEntity() when $default != null:
return $default(_that.resetCode);case _:
  return null;

}
}

}

/// @nodoc


class _VerifyResetCodeEntity implements VerifyResetCodeEntity {
  const _VerifyResetCodeEntity({required this.resetCode});
  

@override final  String resetCode;

/// Create a copy of VerifyResetCodeEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyResetCodeEntityCopyWith<_VerifyResetCodeEntity> get copyWith => __$VerifyResetCodeEntityCopyWithImpl<_VerifyResetCodeEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyResetCodeEntity&&(identical(other.resetCode, resetCode) || other.resetCode == resetCode));
}


@override
int get hashCode => Object.hash(runtimeType,resetCode);

@override
String toString() {
  return 'VerifyResetCodeEntity(resetCode: $resetCode)';
}


}

/// @nodoc
abstract mixin class _$VerifyResetCodeEntityCopyWith<$Res> implements $VerifyResetCodeEntityCopyWith<$Res> {
  factory _$VerifyResetCodeEntityCopyWith(_VerifyResetCodeEntity value, $Res Function(_VerifyResetCodeEntity) _then) = __$VerifyResetCodeEntityCopyWithImpl;
@override @useResult
$Res call({
 String resetCode
});




}
/// @nodoc
class __$VerifyResetCodeEntityCopyWithImpl<$Res>
    implements _$VerifyResetCodeEntityCopyWith<$Res> {
  __$VerifyResetCodeEntityCopyWithImpl(this._self, this._then);

  final _VerifyResetCodeEntity _self;
  final $Res Function(_VerifyResetCodeEntity) _then;

/// Create a copy of VerifyResetCodeEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? resetCode = null,}) {
  return _then(_VerifyResetCodeEntity(
resetCode: null == resetCode ? _self.resetCode : resetCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
