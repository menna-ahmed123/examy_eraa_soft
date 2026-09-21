// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'explore_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExploreEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExploreEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExploreEvent()';
}


}

/// @nodoc
class $ExploreEventCopyWith<$Res>  {
$ExploreEventCopyWith(ExploreEvent _, $Res Function(ExploreEvent) __);
}


/// Adds pattern-matching-related methods to [ExploreEvent].
extension ExploreEventPatterns on ExploreEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ExploreLoadSubjects value)?  loadSubjects,TResult Function( ExploreSearchChanged value)?  searchChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ExploreLoadSubjects() when loadSubjects != null:
return loadSubjects(_that);case ExploreSearchChanged() when searchChanged != null:
return searchChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ExploreLoadSubjects value)  loadSubjects,required TResult Function( ExploreSearchChanged value)  searchChanged,}){
final _that = this;
switch (_that) {
case ExploreLoadSubjects():
return loadSubjects(_that);case ExploreSearchChanged():
return searchChanged(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ExploreLoadSubjects value)?  loadSubjects,TResult? Function( ExploreSearchChanged value)?  searchChanged,}){
final _that = this;
switch (_that) {
case ExploreLoadSubjects() when loadSubjects != null:
return loadSubjects(_that);case ExploreSearchChanged() when searchChanged != null:
return searchChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadSubjects,TResult Function( String query)?  searchChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ExploreLoadSubjects() when loadSubjects != null:
return loadSubjects();case ExploreSearchChanged() when searchChanged != null:
return searchChanged(_that.query);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadSubjects,required TResult Function( String query)  searchChanged,}) {final _that = this;
switch (_that) {
case ExploreLoadSubjects():
return loadSubjects();case ExploreSearchChanged():
return searchChanged(_that.query);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadSubjects,TResult? Function( String query)?  searchChanged,}) {final _that = this;
switch (_that) {
case ExploreLoadSubjects() when loadSubjects != null:
return loadSubjects();case ExploreSearchChanged() when searchChanged != null:
return searchChanged(_that.query);case _:
  return null;

}
}

}

/// @nodoc


class ExploreLoadSubjects implements ExploreEvent {
  const ExploreLoadSubjects();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExploreLoadSubjects);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExploreEvent.loadSubjects()';
}


}




/// @nodoc


class ExploreSearchChanged implements ExploreEvent {
  const ExploreSearchChanged(this.query);
  

 final  String query;

/// Create a copy of ExploreEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExploreSearchChangedCopyWith<ExploreSearchChanged> get copyWith => _$ExploreSearchChangedCopyWithImpl<ExploreSearchChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExploreSearchChanged&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'ExploreEvent.searchChanged(query: $query)';
}


}

/// @nodoc
abstract mixin class $ExploreSearchChangedCopyWith<$Res> implements $ExploreEventCopyWith<$Res> {
  factory $ExploreSearchChangedCopyWith(ExploreSearchChanged value, $Res Function(ExploreSearchChanged) _then) = _$ExploreSearchChangedCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$ExploreSearchChangedCopyWithImpl<$Res>
    implements $ExploreSearchChangedCopyWith<$Res> {
  _$ExploreSearchChangedCopyWithImpl(this._self, this._then);

  final ExploreSearchChanged _self;
  final $Res Function(ExploreSearchChanged) _then;

/// Create a copy of ExploreEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(ExploreSearchChanged(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
