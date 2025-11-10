// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_reviews_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetReviewsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetReviewsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetReviewsState()';
}


}

/// @nodoc
class $GetReviewsStateCopyWith<$Res>  {
$GetReviewsStateCopyWith(GetReviewsState _, $Res Function(GetReviewsState) __);
}


/// Adds pattern-matching-related methods to [GetReviewsState].
extension GetReviewsStatePatterns on GetReviewsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetReviewsLoading value)?  getReviewsLoading,TResult Function( GetReviewsSuccess value)?  getReviewsSuccess,TResult Function( GetReviewsFailure value)?  getReviewsFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetReviewsLoading() when getReviewsLoading != null:
return getReviewsLoading(_that);case GetReviewsSuccess() when getReviewsSuccess != null:
return getReviewsSuccess(_that);case GetReviewsFailure() when getReviewsFailure != null:
return getReviewsFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetReviewsLoading value)  getReviewsLoading,required TResult Function( GetReviewsSuccess value)  getReviewsSuccess,required TResult Function( GetReviewsFailure value)  getReviewsFailure,}){
final _that = this;
switch (_that) {
case GetReviewsLoading():
return getReviewsLoading(_that);case GetReviewsSuccess():
return getReviewsSuccess(_that);case GetReviewsFailure():
return getReviewsFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetReviewsLoading value)?  getReviewsLoading,TResult? Function( GetReviewsSuccess value)?  getReviewsSuccess,TResult? Function( GetReviewsFailure value)?  getReviewsFailure,}){
final _that = this;
switch (_that) {
case GetReviewsLoading() when getReviewsLoading != null:
return getReviewsLoading(_that);case GetReviewsSuccess() when getReviewsSuccess != null:
return getReviewsSuccess(_that);case GetReviewsFailure() when getReviewsFailure != null:
return getReviewsFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getReviewsLoading,TResult Function( GetReviewsResponse getReviewsResponse)?  getReviewsSuccess,TResult Function( ApiErrorModel apiErrorModel)?  getReviewsFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetReviewsLoading() when getReviewsLoading != null:
return getReviewsLoading();case GetReviewsSuccess() when getReviewsSuccess != null:
return getReviewsSuccess(_that.getReviewsResponse);case GetReviewsFailure() when getReviewsFailure != null:
return getReviewsFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getReviewsLoading,required TResult Function( GetReviewsResponse getReviewsResponse)  getReviewsSuccess,required TResult Function( ApiErrorModel apiErrorModel)  getReviewsFailure,}) {final _that = this;
switch (_that) {
case GetReviewsLoading():
return getReviewsLoading();case GetReviewsSuccess():
return getReviewsSuccess(_that.getReviewsResponse);case GetReviewsFailure():
return getReviewsFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getReviewsLoading,TResult? Function( GetReviewsResponse getReviewsResponse)?  getReviewsSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  getReviewsFailure,}) {final _that = this;
switch (_that) {
case GetReviewsLoading() when getReviewsLoading != null:
return getReviewsLoading();case GetReviewsSuccess() when getReviewsSuccess != null:
return getReviewsSuccess(_that.getReviewsResponse);case GetReviewsFailure() when getReviewsFailure != null:
return getReviewsFailure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class GetReviewsLoading implements GetReviewsState {
  const GetReviewsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetReviewsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetReviewsState.getReviewsLoading()';
}


}




/// @nodoc


class GetReviewsSuccess implements GetReviewsState {
  const GetReviewsSuccess({required this.getReviewsResponse});
  

 final  GetReviewsResponse getReviewsResponse;

/// Create a copy of GetReviewsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetReviewsSuccessCopyWith<GetReviewsSuccess> get copyWith => _$GetReviewsSuccessCopyWithImpl<GetReviewsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetReviewsSuccess&&(identical(other.getReviewsResponse, getReviewsResponse) || other.getReviewsResponse == getReviewsResponse));
}


@override
int get hashCode => Object.hash(runtimeType,getReviewsResponse);

@override
String toString() {
  return 'GetReviewsState.getReviewsSuccess(getReviewsResponse: $getReviewsResponse)';
}


}

/// @nodoc
abstract mixin class $GetReviewsSuccessCopyWith<$Res> implements $GetReviewsStateCopyWith<$Res> {
  factory $GetReviewsSuccessCopyWith(GetReviewsSuccess value, $Res Function(GetReviewsSuccess) _then) = _$GetReviewsSuccessCopyWithImpl;
@useResult
$Res call({
 GetReviewsResponse getReviewsResponse
});




}
/// @nodoc
class _$GetReviewsSuccessCopyWithImpl<$Res>
    implements $GetReviewsSuccessCopyWith<$Res> {
  _$GetReviewsSuccessCopyWithImpl(this._self, this._then);

  final GetReviewsSuccess _self;
  final $Res Function(GetReviewsSuccess) _then;

/// Create a copy of GetReviewsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? getReviewsResponse = null,}) {
  return _then(GetReviewsSuccess(
getReviewsResponse: null == getReviewsResponse ? _self.getReviewsResponse : getReviewsResponse // ignore: cast_nullable_to_non_nullable
as GetReviewsResponse,
  ));
}


}

/// @nodoc


class GetReviewsFailure implements GetReviewsState {
  const GetReviewsFailure({required this.apiErrorModel});
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of GetReviewsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetReviewsFailureCopyWith<GetReviewsFailure> get copyWith => _$GetReviewsFailureCopyWithImpl<GetReviewsFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetReviewsFailure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'GetReviewsState.getReviewsFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $GetReviewsFailureCopyWith<$Res> implements $GetReviewsStateCopyWith<$Res> {
  factory $GetReviewsFailureCopyWith(GetReviewsFailure value, $Res Function(GetReviewsFailure) _then) = _$GetReviewsFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$GetReviewsFailureCopyWithImpl<$Res>
    implements $GetReviewsFailureCopyWith<$Res> {
  _$GetReviewsFailureCopyWithImpl(this._self, this._then);

  final GetReviewsFailure _self;
  final $Res Function(GetReviewsFailure) _then;

/// Create a copy of GetReviewsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(GetReviewsFailure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
