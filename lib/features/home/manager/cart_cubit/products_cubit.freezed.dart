// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsState()';
}


}

/// @nodoc
class $ProductsStateCopyWith<$Res>  {
$ProductsStateCopyWith(ProductsState _, $Res Function(ProductsState) __);
}


/// Adds pattern-matching-related methods to [ProductsState].
extension ProductsStatePatterns on ProductsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetProductsLoading value)?  getProductsLoading,TResult Function( GetProductsSuccess value)?  getProductsSuccess,TResult Function( GetProductsFailure value)?  getProductsFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetProductsLoading() when getProductsLoading != null:
return getProductsLoading(_that);case GetProductsSuccess() when getProductsSuccess != null:
return getProductsSuccess(_that);case GetProductsFailure() when getProductsFailure != null:
return getProductsFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetProductsLoading value)  getProductsLoading,required TResult Function( GetProductsSuccess value)  getProductsSuccess,required TResult Function( GetProductsFailure value)  getProductsFailure,}){
final _that = this;
switch (_that) {
case GetProductsLoading():
return getProductsLoading(_that);case GetProductsSuccess():
return getProductsSuccess(_that);case GetProductsFailure():
return getProductsFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetProductsLoading value)?  getProductsLoading,TResult? Function( GetProductsSuccess value)?  getProductsSuccess,TResult? Function( GetProductsFailure value)?  getProductsFailure,}){
final _that = this;
switch (_that) {
case GetProductsLoading() when getProductsLoading != null:
return getProductsLoading(_that);case GetProductsSuccess() when getProductsSuccess != null:
return getProductsSuccess(_that);case GetProductsFailure() when getProductsFailure != null:
return getProductsFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getProductsLoading,TResult Function( GetProductsResponse getProductsResponse)?  getProductsSuccess,TResult Function( ApiErrorModel apiErrorModel)?  getProductsFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetProductsLoading() when getProductsLoading != null:
return getProductsLoading();case GetProductsSuccess() when getProductsSuccess != null:
return getProductsSuccess(_that.getProductsResponse);case GetProductsFailure() when getProductsFailure != null:
return getProductsFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getProductsLoading,required TResult Function( GetProductsResponse getProductsResponse)  getProductsSuccess,required TResult Function( ApiErrorModel apiErrorModel)  getProductsFailure,}) {final _that = this;
switch (_that) {
case GetProductsLoading():
return getProductsLoading();case GetProductsSuccess():
return getProductsSuccess(_that.getProductsResponse);case GetProductsFailure():
return getProductsFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getProductsLoading,TResult? Function( GetProductsResponse getProductsResponse)?  getProductsSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  getProductsFailure,}) {final _that = this;
switch (_that) {
case GetProductsLoading() when getProductsLoading != null:
return getProductsLoading();case GetProductsSuccess() when getProductsSuccess != null:
return getProductsSuccess(_that.getProductsResponse);case GetProductsFailure() when getProductsFailure != null:
return getProductsFailure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class GetProductsLoading implements ProductsState {
  const GetProductsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProductsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsState.getProductsLoading()';
}


}




/// @nodoc


class GetProductsSuccess implements ProductsState {
  const GetProductsSuccess({required this.getProductsResponse});
  

 final  GetProductsResponse getProductsResponse;

/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProductsSuccessCopyWith<GetProductsSuccess> get copyWith => _$GetProductsSuccessCopyWithImpl<GetProductsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProductsSuccess&&(identical(other.getProductsResponse, getProductsResponse) || other.getProductsResponse == getProductsResponse));
}


@override
int get hashCode => Object.hash(runtimeType,getProductsResponse);

@override
String toString() {
  return 'ProductsState.getProductsSuccess(getProductsResponse: $getProductsResponse)';
}


}

/// @nodoc
abstract mixin class $GetProductsSuccessCopyWith<$Res> implements $ProductsStateCopyWith<$Res> {
  factory $GetProductsSuccessCopyWith(GetProductsSuccess value, $Res Function(GetProductsSuccess) _then) = _$GetProductsSuccessCopyWithImpl;
@useResult
$Res call({
 GetProductsResponse getProductsResponse
});




}
/// @nodoc
class _$GetProductsSuccessCopyWithImpl<$Res>
    implements $GetProductsSuccessCopyWith<$Res> {
  _$GetProductsSuccessCopyWithImpl(this._self, this._then);

  final GetProductsSuccess _self;
  final $Res Function(GetProductsSuccess) _then;

/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? getProductsResponse = null,}) {
  return _then(GetProductsSuccess(
getProductsResponse: null == getProductsResponse ? _self.getProductsResponse : getProductsResponse // ignore: cast_nullable_to_non_nullable
as GetProductsResponse,
  ));
}


}

/// @nodoc


class GetProductsFailure implements ProductsState {
  const GetProductsFailure({required this.apiErrorModel});
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProductsFailureCopyWith<GetProductsFailure> get copyWith => _$GetProductsFailureCopyWithImpl<GetProductsFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProductsFailure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'ProductsState.getProductsFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $GetProductsFailureCopyWith<$Res> implements $ProductsStateCopyWith<$Res> {
  factory $GetProductsFailureCopyWith(GetProductsFailure value, $Res Function(GetProductsFailure) _then) = _$GetProductsFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$GetProductsFailureCopyWithImpl<$Res>
    implements $GetProductsFailureCopyWith<$Res> {
  _$GetProductsFailureCopyWithImpl(this._self, this._then);

  final GetProductsFailure _self;
  final $Res Function(GetProductsFailure) _then;

/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(GetProductsFailure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
