// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_items_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartItemsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItemsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartItemsState()';
}


}

/// @nodoc
class $CartItemsStateCopyWith<$Res>  {
$CartItemsStateCopyWith(CartItemsState _, $Res Function(CartItemsState) __);
}


/// Adds pattern-matching-related methods to [CartItemsState].
extension CartItemsStatePatterns on CartItemsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetCartItemsLoading value)?  getCartItemsLoading,TResult Function( GetCartItemsSuccess value)?  getCartItemsSuccess,TResult Function( GetCartItemsFailure value)?  getCartItemsFailure,TResult Function( AddCartItemSuccess value)?  addCartItemSuccess,TResult Function( AddCartItemFailure value)?  addCartItemFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetCartItemsLoading() when getCartItemsLoading != null:
return getCartItemsLoading(_that);case GetCartItemsSuccess() when getCartItemsSuccess != null:
return getCartItemsSuccess(_that);case GetCartItemsFailure() when getCartItemsFailure != null:
return getCartItemsFailure(_that);case AddCartItemSuccess() when addCartItemSuccess != null:
return addCartItemSuccess(_that);case AddCartItemFailure() when addCartItemFailure != null:
return addCartItemFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetCartItemsLoading value)  getCartItemsLoading,required TResult Function( GetCartItemsSuccess value)  getCartItemsSuccess,required TResult Function( GetCartItemsFailure value)  getCartItemsFailure,required TResult Function( AddCartItemSuccess value)  addCartItemSuccess,required TResult Function( AddCartItemFailure value)  addCartItemFailure,}){
final _that = this;
switch (_that) {
case GetCartItemsLoading():
return getCartItemsLoading(_that);case GetCartItemsSuccess():
return getCartItemsSuccess(_that);case GetCartItemsFailure():
return getCartItemsFailure(_that);case AddCartItemSuccess():
return addCartItemSuccess(_that);case AddCartItemFailure():
return addCartItemFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetCartItemsLoading value)?  getCartItemsLoading,TResult? Function( GetCartItemsSuccess value)?  getCartItemsSuccess,TResult? Function( GetCartItemsFailure value)?  getCartItemsFailure,TResult? Function( AddCartItemSuccess value)?  addCartItemSuccess,TResult? Function( AddCartItemFailure value)?  addCartItemFailure,}){
final _that = this;
switch (_that) {
case GetCartItemsLoading() when getCartItemsLoading != null:
return getCartItemsLoading(_that);case GetCartItemsSuccess() when getCartItemsSuccess != null:
return getCartItemsSuccess(_that);case GetCartItemsFailure() when getCartItemsFailure != null:
return getCartItemsFailure(_that);case AddCartItemSuccess() when addCartItemSuccess != null:
return addCartItemSuccess(_that);case AddCartItemFailure() when addCartItemFailure != null:
return addCartItemFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getCartItemsLoading,TResult Function( GetCartItemsResponse getProductsResponse)?  getCartItemsSuccess,TResult Function( ApiErrorModel apiErrorModel)?  getCartItemsFailure,TResult Function( AddCartItemResponse getProductsResponse)?  addCartItemSuccess,TResult Function( ApiErrorModel apiErrorModel)?  addCartItemFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetCartItemsLoading() when getCartItemsLoading != null:
return getCartItemsLoading();case GetCartItemsSuccess() when getCartItemsSuccess != null:
return getCartItemsSuccess(_that.getProductsResponse);case GetCartItemsFailure() when getCartItemsFailure != null:
return getCartItemsFailure(_that.apiErrorModel);case AddCartItemSuccess() when addCartItemSuccess != null:
return addCartItemSuccess(_that.getProductsResponse);case AddCartItemFailure() when addCartItemFailure != null:
return addCartItemFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getCartItemsLoading,required TResult Function( GetCartItemsResponse getProductsResponse)  getCartItemsSuccess,required TResult Function( ApiErrorModel apiErrorModel)  getCartItemsFailure,required TResult Function( AddCartItemResponse getProductsResponse)  addCartItemSuccess,required TResult Function( ApiErrorModel apiErrorModel)  addCartItemFailure,}) {final _that = this;
switch (_that) {
case GetCartItemsLoading():
return getCartItemsLoading();case GetCartItemsSuccess():
return getCartItemsSuccess(_that.getProductsResponse);case GetCartItemsFailure():
return getCartItemsFailure(_that.apiErrorModel);case AddCartItemSuccess():
return addCartItemSuccess(_that.getProductsResponse);case AddCartItemFailure():
return addCartItemFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getCartItemsLoading,TResult? Function( GetCartItemsResponse getProductsResponse)?  getCartItemsSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  getCartItemsFailure,TResult? Function( AddCartItemResponse getProductsResponse)?  addCartItemSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  addCartItemFailure,}) {final _that = this;
switch (_that) {
case GetCartItemsLoading() when getCartItemsLoading != null:
return getCartItemsLoading();case GetCartItemsSuccess() when getCartItemsSuccess != null:
return getCartItemsSuccess(_that.getProductsResponse);case GetCartItemsFailure() when getCartItemsFailure != null:
return getCartItemsFailure(_that.apiErrorModel);case AddCartItemSuccess() when addCartItemSuccess != null:
return addCartItemSuccess(_that.getProductsResponse);case AddCartItemFailure() when addCartItemFailure != null:
return addCartItemFailure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class GetCartItemsLoading implements CartItemsState {
  const GetCartItemsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCartItemsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartItemsState.getCartItemsLoading()';
}


}




/// @nodoc


class GetCartItemsSuccess implements CartItemsState {
  const GetCartItemsSuccess({required this.getProductsResponse});
  

 final  GetCartItemsResponse getProductsResponse;

/// Create a copy of CartItemsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCartItemsSuccessCopyWith<GetCartItemsSuccess> get copyWith => _$GetCartItemsSuccessCopyWithImpl<GetCartItemsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCartItemsSuccess&&(identical(other.getProductsResponse, getProductsResponse) || other.getProductsResponse == getProductsResponse));
}


@override
int get hashCode => Object.hash(runtimeType,getProductsResponse);

@override
String toString() {
  return 'CartItemsState.getCartItemsSuccess(getProductsResponse: $getProductsResponse)';
}


}

/// @nodoc
abstract mixin class $GetCartItemsSuccessCopyWith<$Res> implements $CartItemsStateCopyWith<$Res> {
  factory $GetCartItemsSuccessCopyWith(GetCartItemsSuccess value, $Res Function(GetCartItemsSuccess) _then) = _$GetCartItemsSuccessCopyWithImpl;
@useResult
$Res call({
 GetCartItemsResponse getProductsResponse
});




}
/// @nodoc
class _$GetCartItemsSuccessCopyWithImpl<$Res>
    implements $GetCartItemsSuccessCopyWith<$Res> {
  _$GetCartItemsSuccessCopyWithImpl(this._self, this._then);

  final GetCartItemsSuccess _self;
  final $Res Function(GetCartItemsSuccess) _then;

/// Create a copy of CartItemsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? getProductsResponse = null,}) {
  return _then(GetCartItemsSuccess(
getProductsResponse: null == getProductsResponse ? _self.getProductsResponse : getProductsResponse // ignore: cast_nullable_to_non_nullable
as GetCartItemsResponse,
  ));
}


}

/// @nodoc


class GetCartItemsFailure implements CartItemsState {
  const GetCartItemsFailure({required this.apiErrorModel});
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of CartItemsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCartItemsFailureCopyWith<GetCartItemsFailure> get copyWith => _$GetCartItemsFailureCopyWithImpl<GetCartItemsFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCartItemsFailure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'CartItemsState.getCartItemsFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $GetCartItemsFailureCopyWith<$Res> implements $CartItemsStateCopyWith<$Res> {
  factory $GetCartItemsFailureCopyWith(GetCartItemsFailure value, $Res Function(GetCartItemsFailure) _then) = _$GetCartItemsFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$GetCartItemsFailureCopyWithImpl<$Res>
    implements $GetCartItemsFailureCopyWith<$Res> {
  _$GetCartItemsFailureCopyWithImpl(this._self, this._then);

  final GetCartItemsFailure _self;
  final $Res Function(GetCartItemsFailure) _then;

/// Create a copy of CartItemsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(GetCartItemsFailure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

/// @nodoc


class AddCartItemSuccess implements CartItemsState {
  const AddCartItemSuccess({required this.getProductsResponse});
  

 final  AddCartItemResponse getProductsResponse;

/// Create a copy of CartItemsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddCartItemSuccessCopyWith<AddCartItemSuccess> get copyWith => _$AddCartItemSuccessCopyWithImpl<AddCartItemSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCartItemSuccess&&(identical(other.getProductsResponse, getProductsResponse) || other.getProductsResponse == getProductsResponse));
}


@override
int get hashCode => Object.hash(runtimeType,getProductsResponse);

@override
String toString() {
  return 'CartItemsState.addCartItemSuccess(getProductsResponse: $getProductsResponse)';
}


}

/// @nodoc
abstract mixin class $AddCartItemSuccessCopyWith<$Res> implements $CartItemsStateCopyWith<$Res> {
  factory $AddCartItemSuccessCopyWith(AddCartItemSuccess value, $Res Function(AddCartItemSuccess) _then) = _$AddCartItemSuccessCopyWithImpl;
@useResult
$Res call({
 AddCartItemResponse getProductsResponse
});




}
/// @nodoc
class _$AddCartItemSuccessCopyWithImpl<$Res>
    implements $AddCartItemSuccessCopyWith<$Res> {
  _$AddCartItemSuccessCopyWithImpl(this._self, this._then);

  final AddCartItemSuccess _self;
  final $Res Function(AddCartItemSuccess) _then;

/// Create a copy of CartItemsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? getProductsResponse = null,}) {
  return _then(AddCartItemSuccess(
getProductsResponse: null == getProductsResponse ? _self.getProductsResponse : getProductsResponse // ignore: cast_nullable_to_non_nullable
as AddCartItemResponse,
  ));
}


}

/// @nodoc


class AddCartItemFailure implements CartItemsState {
  const AddCartItemFailure({required this.apiErrorModel});
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of CartItemsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddCartItemFailureCopyWith<AddCartItemFailure> get copyWith => _$AddCartItemFailureCopyWithImpl<AddCartItemFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCartItemFailure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'CartItemsState.addCartItemFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $AddCartItemFailureCopyWith<$Res> implements $CartItemsStateCopyWith<$Res> {
  factory $AddCartItemFailureCopyWith(AddCartItemFailure value, $Res Function(AddCartItemFailure) _then) = _$AddCartItemFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$AddCartItemFailureCopyWithImpl<$Res>
    implements $AddCartItemFailureCopyWith<$Res> {
  _$AddCartItemFailureCopyWithImpl(this._self, this._then);

  final AddCartItemFailure _self;
  final $Res Function(AddCartItemFailure) _then;

/// Create a copy of CartItemsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(AddCartItemFailure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
