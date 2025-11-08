// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cache_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CacheResult<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CacheResult<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CacheResult<$T>()';
}


}

/// @nodoc
class $CacheResultCopyWith<T,$Res>  {
$CacheResultCopyWith(CacheResult<T> _, $Res Function(CacheResult<T>) __);
}


/// Adds pattern-matching-related methods to [CacheResult].
extension CacheResultPatterns<T> on CacheResult<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CacheSuccess<T> value)?  success,TResult Function( CacheFailure<T> value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CacheSuccess() when success != null:
return success(_that);case CacheFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CacheSuccess<T> value)  success,required TResult Function( CacheFailure<T> value)  failure,}){
final _that = this;
switch (_that) {
case CacheSuccess():
return success(_that);case CacheFailure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CacheSuccess<T> value)?  success,TResult? Function( CacheFailure<T> value)?  failure,}){
final _that = this;
switch (_that) {
case CacheSuccess() when success != null:
return success(_that);case CacheFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( T data)?  success,TResult Function( CacheErrorModel cacheErrorModel)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CacheSuccess() when success != null:
return success(_that.data);case CacheFailure() when failure != null:
return failure(_that.cacheErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( T data)  success,required TResult Function( CacheErrorModel cacheErrorModel)  failure,}) {final _that = this;
switch (_that) {
case CacheSuccess():
return success(_that.data);case CacheFailure():
return failure(_that.cacheErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( T data)?  success,TResult? Function( CacheErrorModel cacheErrorModel)?  failure,}) {final _that = this;
switch (_that) {
case CacheSuccess() when success != null:
return success(_that.data);case CacheFailure() when failure != null:
return failure(_that.cacheErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class CacheSuccess<T> implements CacheResult<T> {
  const CacheSuccess(this.data);
  

 final  T data;

/// Create a copy of CacheResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CacheSuccessCopyWith<T, CacheSuccess<T>> get copyWith => _$CacheSuccessCopyWithImpl<T, CacheSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CacheSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'CacheResult<$T>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $CacheSuccessCopyWith<T,$Res> implements $CacheResultCopyWith<T, $Res> {
  factory $CacheSuccessCopyWith(CacheSuccess<T> value, $Res Function(CacheSuccess<T>) _then) = _$CacheSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$CacheSuccessCopyWithImpl<T,$Res>
    implements $CacheSuccessCopyWith<T, $Res> {
  _$CacheSuccessCopyWithImpl(this._self, this._then);

  final CacheSuccess<T> _self;
  final $Res Function(CacheSuccess<T>) _then;

/// Create a copy of CacheResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(CacheSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class CacheFailure<T> implements CacheResult<T> {
  const CacheFailure(this.cacheErrorModel);
  

 final  CacheErrorModel cacheErrorModel;

/// Create a copy of CacheResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CacheFailureCopyWith<T, CacheFailure<T>> get copyWith => _$CacheFailureCopyWithImpl<T, CacheFailure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CacheFailure<T>&&(identical(other.cacheErrorModel, cacheErrorModel) || other.cacheErrorModel == cacheErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,cacheErrorModel);

@override
String toString() {
  return 'CacheResult<$T>.failure(cacheErrorModel: $cacheErrorModel)';
}


}

/// @nodoc
abstract mixin class $CacheFailureCopyWith<T,$Res> implements $CacheResultCopyWith<T, $Res> {
  factory $CacheFailureCopyWith(CacheFailure<T> value, $Res Function(CacheFailure<T>) _then) = _$CacheFailureCopyWithImpl;
@useResult
$Res call({
 CacheErrorModel cacheErrorModel
});




}
/// @nodoc
class _$CacheFailureCopyWithImpl<T,$Res>
    implements $CacheFailureCopyWith<T, $Res> {
  _$CacheFailureCopyWithImpl(this._self, this._then);

  final CacheFailure<T> _self;
  final $Res Function(CacheFailure<T>) _then;

/// Create a copy of CacheResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cacheErrorModel = null,}) {
  return _then(CacheFailure<T>(
null == cacheErrorModel ? _self.cacheErrorModel : cacheErrorModel // ignore: cast_nullable_to_non_nullable
as CacheErrorModel,
  ));
}


}

// dart format on
