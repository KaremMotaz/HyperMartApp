// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_review_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddReviewState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddReviewState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddReviewState()';
}


}

/// @nodoc
class $AddReviewStateCopyWith<$Res>  {
$AddReviewStateCopyWith(AddReviewState _, $Res Function(AddReviewState) __);
}


/// Adds pattern-matching-related methods to [AddReviewState].
extension AddReviewStatePatterns on AddReviewState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AddReviewinitial value)?  addReviewinitial,TResult Function( AddReviewsLoading value)?  addReviewLoading,TResult Function( AddReviewSuccess value)?  addReviewSuccess,TResult Function( AddReviewFailure value)?  addReviewFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddReviewinitial() when addReviewinitial != null:
return addReviewinitial(_that);case AddReviewsLoading() when addReviewLoading != null:
return addReviewLoading(_that);case AddReviewSuccess() when addReviewSuccess != null:
return addReviewSuccess(_that);case AddReviewFailure() when addReviewFailure != null:
return addReviewFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AddReviewinitial value)  addReviewinitial,required TResult Function( AddReviewsLoading value)  addReviewLoading,required TResult Function( AddReviewSuccess value)  addReviewSuccess,required TResult Function( AddReviewFailure value)  addReviewFailure,}){
final _that = this;
switch (_that) {
case _AddReviewinitial():
return addReviewinitial(_that);case AddReviewsLoading():
return addReviewLoading(_that);case AddReviewSuccess():
return addReviewSuccess(_that);case AddReviewFailure():
return addReviewFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AddReviewinitial value)?  addReviewinitial,TResult? Function( AddReviewsLoading value)?  addReviewLoading,TResult? Function( AddReviewSuccess value)?  addReviewSuccess,TResult? Function( AddReviewFailure value)?  addReviewFailure,}){
final _that = this;
switch (_that) {
case _AddReviewinitial() when addReviewinitial != null:
return addReviewinitial(_that);case AddReviewsLoading() when addReviewLoading != null:
return addReviewLoading(_that);case AddReviewSuccess() when addReviewSuccess != null:
return addReviewSuccess(_that);case AddReviewFailure() when addReviewFailure != null:
return addReviewFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  addReviewinitial,TResult Function()?  addReviewLoading,TResult Function( AddReviewResponse addReviewResponse)?  addReviewSuccess,TResult Function( ApiErrorModel apiErrorModel)?  addReviewFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddReviewinitial() when addReviewinitial != null:
return addReviewinitial();case AddReviewsLoading() when addReviewLoading != null:
return addReviewLoading();case AddReviewSuccess() when addReviewSuccess != null:
return addReviewSuccess(_that.addReviewResponse);case AddReviewFailure() when addReviewFailure != null:
return addReviewFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  addReviewinitial,required TResult Function()  addReviewLoading,required TResult Function( AddReviewResponse addReviewResponse)  addReviewSuccess,required TResult Function( ApiErrorModel apiErrorModel)  addReviewFailure,}) {final _that = this;
switch (_that) {
case _AddReviewinitial():
return addReviewinitial();case AddReviewsLoading():
return addReviewLoading();case AddReviewSuccess():
return addReviewSuccess(_that.addReviewResponse);case AddReviewFailure():
return addReviewFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  addReviewinitial,TResult? Function()?  addReviewLoading,TResult? Function( AddReviewResponse addReviewResponse)?  addReviewSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  addReviewFailure,}) {final _that = this;
switch (_that) {
case _AddReviewinitial() when addReviewinitial != null:
return addReviewinitial();case AddReviewsLoading() when addReviewLoading != null:
return addReviewLoading();case AddReviewSuccess() when addReviewSuccess != null:
return addReviewSuccess(_that.addReviewResponse);case AddReviewFailure() when addReviewFailure != null:
return addReviewFailure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _AddReviewinitial implements AddReviewState {
  const _AddReviewinitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddReviewinitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddReviewState.addReviewinitial()';
}


}




/// @nodoc


class AddReviewsLoading implements AddReviewState {
  const AddReviewsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddReviewsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddReviewState.addReviewLoading()';
}


}




/// @nodoc


class AddReviewSuccess implements AddReviewState {
  const AddReviewSuccess({required this.addReviewResponse});
  

 final  AddReviewResponse addReviewResponse;

/// Create a copy of AddReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddReviewSuccessCopyWith<AddReviewSuccess> get copyWith => _$AddReviewSuccessCopyWithImpl<AddReviewSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddReviewSuccess&&(identical(other.addReviewResponse, addReviewResponse) || other.addReviewResponse == addReviewResponse));
}


@override
int get hashCode => Object.hash(runtimeType,addReviewResponse);

@override
String toString() {
  return 'AddReviewState.addReviewSuccess(addReviewResponse: $addReviewResponse)';
}


}

/// @nodoc
abstract mixin class $AddReviewSuccessCopyWith<$Res> implements $AddReviewStateCopyWith<$Res> {
  factory $AddReviewSuccessCopyWith(AddReviewSuccess value, $Res Function(AddReviewSuccess) _then) = _$AddReviewSuccessCopyWithImpl;
@useResult
$Res call({
 AddReviewResponse addReviewResponse
});




}
/// @nodoc
class _$AddReviewSuccessCopyWithImpl<$Res>
    implements $AddReviewSuccessCopyWith<$Res> {
  _$AddReviewSuccessCopyWithImpl(this._self, this._then);

  final AddReviewSuccess _self;
  final $Res Function(AddReviewSuccess) _then;

/// Create a copy of AddReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? addReviewResponse = null,}) {
  return _then(AddReviewSuccess(
addReviewResponse: null == addReviewResponse ? _self.addReviewResponse : addReviewResponse // ignore: cast_nullable_to_non_nullable
as AddReviewResponse,
  ));
}


}

/// @nodoc


class AddReviewFailure implements AddReviewState {
  const AddReviewFailure({required this.apiErrorModel});
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of AddReviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddReviewFailureCopyWith<AddReviewFailure> get copyWith => _$AddReviewFailureCopyWithImpl<AddReviewFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddReviewFailure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'AddReviewState.addReviewFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $AddReviewFailureCopyWith<$Res> implements $AddReviewStateCopyWith<$Res> {
  factory $AddReviewFailureCopyWith(AddReviewFailure value, $Res Function(AddReviewFailure) _then) = _$AddReviewFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$AddReviewFailureCopyWithImpl<$Res>
    implements $AddReviewFailureCopyWith<$Res> {
  _$AddReviewFailureCopyWithImpl(this._self, this._then);

  final AddReviewFailure _self;
  final $Res Function(AddReviewFailure) _then;

/// Create a copy of AddReviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(AddReviewFailure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
