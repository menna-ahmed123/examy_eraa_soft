// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subjects_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubjectsEntity {

 SubjectsMetadataEntity get metadata; List<SubjectEntity> get subjects;
/// Create a copy of SubjectsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubjectsEntityCopyWith<SubjectsEntity> get copyWith => _$SubjectsEntityCopyWithImpl<SubjectsEntity>(this as SubjectsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubjectsEntity&&(identical(other.metadata, metadata) || other.metadata == metadata)&&const DeepCollectionEquality().equals(other.subjects, subjects));
}


@override
int get hashCode => Object.hash(runtimeType,metadata,const DeepCollectionEquality().hash(subjects));

@override
String toString() {
  return 'SubjectsEntity(metadata: $metadata, subjects: $subjects)';
}


}

/// @nodoc
abstract mixin class $SubjectsEntityCopyWith<$Res>  {
  factory $SubjectsEntityCopyWith(SubjectsEntity value, $Res Function(SubjectsEntity) _then) = _$SubjectsEntityCopyWithImpl;
@useResult
$Res call({
 SubjectsMetadataEntity metadata, List<SubjectEntity> subjects
});




}
/// @nodoc
class _$SubjectsEntityCopyWithImpl<$Res>
    implements $SubjectsEntityCopyWith<$Res> {
  _$SubjectsEntityCopyWithImpl(this._self, this._then);

  final SubjectsEntity _self;
  final $Res Function(SubjectsEntity) _then;

/// Create a copy of SubjectsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metadata = null,Object? subjects = null,}) {
  return _then(_self.copyWith(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as SubjectsMetadataEntity,subjects: null == subjects ? _self.subjects : subjects // ignore: cast_nullable_to_non_nullable
as List<SubjectEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [SubjectsEntity].
extension SubjectsEntityPatterns on SubjectsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubjectsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubjectsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubjectsEntity value)  $default,){
final _that = this;
switch (_that) {
case _SubjectsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubjectsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SubjectsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SubjectsMetadataEntity metadata,  List<SubjectEntity> subjects)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubjectsEntity() when $default != null:
return $default(_that.metadata,_that.subjects);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SubjectsMetadataEntity metadata,  List<SubjectEntity> subjects)  $default,) {final _that = this;
switch (_that) {
case _SubjectsEntity():
return $default(_that.metadata,_that.subjects);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SubjectsMetadataEntity metadata,  List<SubjectEntity> subjects)?  $default,) {final _that = this;
switch (_that) {
case _SubjectsEntity() when $default != null:
return $default(_that.metadata,_that.subjects);case _:
  return null;

}
}

}

/// @nodoc


class _SubjectsEntity implements SubjectsEntity {
  const _SubjectsEntity({required this.metadata, required final  List<SubjectEntity> subjects}): _subjects = subjects;
  

@override final  SubjectsMetadataEntity metadata;
 final  List<SubjectEntity> _subjects;
@override List<SubjectEntity> get subjects {
  if (_subjects is EqualUnmodifiableListView) return _subjects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subjects);
}


/// Create a copy of SubjectsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubjectsEntityCopyWith<_SubjectsEntity> get copyWith => __$SubjectsEntityCopyWithImpl<_SubjectsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubjectsEntity&&(identical(other.metadata, metadata) || other.metadata == metadata)&&const DeepCollectionEquality().equals(other._subjects, _subjects));
}


@override
int get hashCode => Object.hash(runtimeType,metadata,const DeepCollectionEquality().hash(_subjects));

@override
String toString() {
  return 'SubjectsEntity(metadata: $metadata, subjects: $subjects)';
}


}

/// @nodoc
abstract mixin class _$SubjectsEntityCopyWith<$Res> implements $SubjectsEntityCopyWith<$Res> {
  factory _$SubjectsEntityCopyWith(_SubjectsEntity value, $Res Function(_SubjectsEntity) _then) = __$SubjectsEntityCopyWithImpl;
@override @useResult
$Res call({
 SubjectsMetadataEntity metadata, List<SubjectEntity> subjects
});




}
/// @nodoc
class __$SubjectsEntityCopyWithImpl<$Res>
    implements _$SubjectsEntityCopyWith<$Res> {
  __$SubjectsEntityCopyWithImpl(this._self, this._then);

  final _SubjectsEntity _self;
  final $Res Function(_SubjectsEntity) _then;

/// Create a copy of SubjectsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metadata = null,Object? subjects = null,}) {
  return _then(_SubjectsEntity(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as SubjectsMetadataEntity,subjects: null == subjects ? _self._subjects : subjects // ignore: cast_nullable_to_non_nullable
as List<SubjectEntity>,
  ));
}


}

// dart format on
