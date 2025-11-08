// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_products_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavouriteProductsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavouriteProductsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavouriteProductsState()';
}


}

/// @nodoc
class $FavouriteProductsStateCopyWith<$Res>  {
$FavouriteProductsStateCopyWith(FavouriteProductsState _, $Res Function(FavouriteProductsState) __);
}


/// Adds pattern-matching-related methods to [FavouriteProductsState].
extension FavouriteProductsStatePatterns on FavouriteProductsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( Loading value)?  loading,TResult Function( Success value)?  success,TResult Function( Failure value)?  failure,TResult Function( IsFavourite value)?  isFavourite,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case Failure() when failure != null:
return failure(_that);case IsFavourite() when isFavourite != null:
return isFavourite(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( Loading value)  loading,required TResult Function( Success value)  success,required TResult Function( Failure value)  failure,required TResult Function( IsFavourite value)  isFavourite,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case Loading():
return loading(_that);case Success():
return success(_that);case Failure():
return failure(_that);case IsFavourite():
return isFavourite(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( Loading value)?  loading,TResult? Function( Success value)?  success,TResult? Function( Failure value)?  failure,TResult? Function( IsFavourite value)?  isFavourite,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case Failure() when failure != null:
return failure(_that);case IsFavourite() when isFavourite != null:
return isFavourite(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<ProductModel> favouriteProducts)?  success,TResult Function( CacheErrorModel cacheErrorModel)?  failure,TResult Function( bool isFavourite)?  isFavourite,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success(_that.favouriteProducts);case Failure() when failure != null:
return failure(_that.cacheErrorModel);case IsFavourite() when isFavourite != null:
return isFavourite(_that.isFavourite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<ProductModel> favouriteProducts)  success,required TResult Function( CacheErrorModel cacheErrorModel)  failure,required TResult Function( bool isFavourite)  isFavourite,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case Loading():
return loading();case Success():
return success(_that.favouriteProducts);case Failure():
return failure(_that.cacheErrorModel);case IsFavourite():
return isFavourite(_that.isFavourite);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<ProductModel> favouriteProducts)?  success,TResult? Function( CacheErrorModel cacheErrorModel)?  failure,TResult? Function( bool isFavourite)?  isFavourite,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success(_that.favouriteProducts);case Failure() when failure != null:
return failure(_that.cacheErrorModel);case IsFavourite() when isFavourite != null:
return isFavourite(_that.isFavourite);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements FavouriteProductsState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavouriteProductsState.initial()';
}


}




/// @nodoc


class Loading implements FavouriteProductsState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavouriteProductsState.loading()';
}


}




/// @nodoc


class Success implements FavouriteProductsState {
  const Success({required final  List<ProductModel> favouriteProducts}): _favouriteProducts = favouriteProducts;
  

 final  List<ProductModel> _favouriteProducts;
 List<ProductModel> get favouriteProducts {
  if (_favouriteProducts is EqualUnmodifiableListView) return _favouriteProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_favouriteProducts);
}


/// Create a copy of FavouriteProductsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<Success> get copyWith => _$SuccessCopyWithImpl<Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success&&const DeepCollectionEquality().equals(other._favouriteProducts, _favouriteProducts));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_favouriteProducts));

@override
String toString() {
  return 'FavouriteProductsState.success(favouriteProducts: $favouriteProducts)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<$Res> implements $FavouriteProductsStateCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) _then) = _$SuccessCopyWithImpl;
@useResult
$Res call({
 List<ProductModel> favouriteProducts
});




}
/// @nodoc
class _$SuccessCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success _self;
  final $Res Function(Success) _then;

/// Create a copy of FavouriteProductsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? favouriteProducts = null,}) {
  return _then(Success(
favouriteProducts: null == favouriteProducts ? _self._favouriteProducts : favouriteProducts // ignore: cast_nullable_to_non_nullable
as List<ProductModel>,
  ));
}


}

/// @nodoc


class Failure implements FavouriteProductsState {
  const Failure({required this.cacheErrorModel});
  

 final  CacheErrorModel cacheErrorModel;

/// Create a copy of FavouriteProductsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<Failure> get copyWith => _$FailureCopyWithImpl<Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure&&(identical(other.cacheErrorModel, cacheErrorModel) || other.cacheErrorModel == cacheErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,cacheErrorModel);

@override
String toString() {
  return 'FavouriteProductsState.failure(cacheErrorModel: $cacheErrorModel)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res> implements $FavouriteProductsStateCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) = _$FailureCopyWithImpl;
@useResult
$Res call({
 CacheErrorModel cacheErrorModel
});




}
/// @nodoc
class _$FailureCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

/// Create a copy of FavouriteProductsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cacheErrorModel = null,}) {
  return _then(Failure(
cacheErrorModel: null == cacheErrorModel ? _self.cacheErrorModel : cacheErrorModel // ignore: cast_nullable_to_non_nullable
as CacheErrorModel,
  ));
}


}

/// @nodoc


class IsFavourite implements FavouriteProductsState {
  const IsFavourite({required this.isFavourite});
  

 final  bool isFavourite;

/// Create a copy of FavouriteProductsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IsFavouriteCopyWith<IsFavourite> get copyWith => _$IsFavouriteCopyWithImpl<IsFavourite>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IsFavourite&&(identical(other.isFavourite, isFavourite) || other.isFavourite == isFavourite));
}


@override
int get hashCode => Object.hash(runtimeType,isFavourite);

@override
String toString() {
  return 'FavouriteProductsState.isFavourite(isFavourite: $isFavourite)';
}


}

/// @nodoc
abstract mixin class $IsFavouriteCopyWith<$Res> implements $FavouriteProductsStateCopyWith<$Res> {
  factory $IsFavouriteCopyWith(IsFavourite value, $Res Function(IsFavourite) _then) = _$IsFavouriteCopyWithImpl;
@useResult
$Res call({
 bool isFavourite
});




}
/// @nodoc
class _$IsFavouriteCopyWithImpl<$Res>
    implements $IsFavouriteCopyWith<$Res> {
  _$IsFavouriteCopyWithImpl(this._self, this._then);

  final IsFavourite _self;
  final $Res Function(IsFavourite) _then;

/// Create a copy of FavouriteProductsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isFavourite = null,}) {
  return _then(IsFavourite(
isFavourite: null == isFavourite ? _self.isFavourite : isFavourite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
