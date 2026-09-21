// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_option_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AnswerOptionEntity {

 String get answer; String get key;
/// Create a copy of AnswerOptionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnswerOptionEntityCopyWith<AnswerOptionEntity> get copyWith => _$AnswerOptionEntityCopyWithImpl<AnswerOptionEntity>(this as AnswerOptionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnswerOptionEntity&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.key, key) || other.key == key));
}


@override
int get hashCode => Object.hash(runtimeType,answer,key);

@override
String toString() {
  return 'AnswerOptionEntity(answer: $answer, key: $key)';
}


}

/// @nodoc
abstract mixin class $AnswerOptionEntityCopyWith<$Res>  {
  factory $AnswerOptionEntityCopyWith(AnswerOptionEntity value, $Res Function(AnswerOptionEntity) _then) = _$AnswerOptionEntityCopyWithImpl;
@useResult
$Res call({
 String answer, String key
});




}
/// @nodoc
class _$AnswerOptionEntityCopyWithImpl<$Res>
    implements $AnswerOptionEntityCopyWith<$Res> {
  _$AnswerOptionEntityCopyWithImpl(this._self, this._then);

  final AnswerOptionEntity _self;
  final $Res Function(AnswerOptionEntity) _then;

/// Create a copy of AnswerOptionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? answer = null,Object? key = null,}) {
  return _then(_self.copyWith(
answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AnswerOptionEntity].
extension AnswerOptionEntityPatterns on AnswerOptionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnswerOptionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnswerOptionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnswerOptionEntity value)  $default,){
final _that = this;
switch (_that) {
case _AnswerOptionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnswerOptionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AnswerOptionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String answer,  String key)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnswerOptionEntity() when $default != null:
return $default(_that.answer,_that.key);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String answer,  String key)  $default,) {final _that = this;
switch (_that) {
case _AnswerOptionEntity():
return $default(_that.answer,_that.key);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String answer,  String key)?  $default,) {final _that = this;
switch (_that) {
case _AnswerOptionEntity() when $default != null:
return $default(_that.answer,_that.key);case _:
  return null;

}
}

}

/// @nodoc


class _AnswerOptionEntity implements AnswerOptionEntity {
  const _AnswerOptionEntity({required this.answer, required this.key});
  

@override final  String answer;
@override final  String key;

/// Create a copy of AnswerOptionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnswerOptionEntityCopyWith<_AnswerOptionEntity> get copyWith => __$AnswerOptionEntityCopyWithImpl<_AnswerOptionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnswerOptionEntity&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.key, key) || other.key == key));
}


@override
int get hashCode => Object.hash(runtimeType,answer,key);

@override
String toString() {
  return 'AnswerOptionEntity(answer: $answer, key: $key)';
}


}

/// @nodoc
abstract mixin class _$AnswerOptionEntityCopyWith<$Res> implements $AnswerOptionEntityCopyWith<$Res> {
  factory _$AnswerOptionEntityCopyWith(_AnswerOptionEntity value, $Res Function(_AnswerOptionEntity) _then) = __$AnswerOptionEntityCopyWithImpl;
@override @useResult
$Res call({
 String answer, String key
});




}
/// @nodoc
class __$AnswerOptionEntityCopyWithImpl<$Res>
    implements _$AnswerOptionEntityCopyWith<$Res> {
  __$AnswerOptionEntityCopyWithImpl(this._self, this._then);

  final _AnswerOptionEntity _self;
  final $Res Function(_AnswerOptionEntity) _then;

/// Create a copy of AnswerOptionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? answer = null,Object? key = null,}) {
  return _then(_AnswerOptionEntity(
answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
