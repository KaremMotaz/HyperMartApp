// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_email_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VerifyEmailState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyEmailState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerifyEmailState()';
}


}

/// @nodoc
class $VerifyEmailStateCopyWith<$Res>  {
$VerifyEmailStateCopyWith(VerifyEmailState _, $Res Function(VerifyEmailState) __);
}


/// Adds pattern-matching-related methods to [VerifyEmailState].
extension VerifyEmailStatePatterns on VerifyEmailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _VerifyEmailInitial value)?  verifyEmailInitial,TResult Function( VerifyEmailLoading value)?  verifyEmailLoading,TResult Function( VerifyEmailSuccess value)?  verifyEmailSuccess,TResult Function( VerifyEmailFailure value)?  verifyEmailFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyEmailInitial() when verifyEmailInitial != null:
return verifyEmailInitial(_that);case VerifyEmailLoading() when verifyEmailLoading != null:
return verifyEmailLoading(_that);case VerifyEmailSuccess() when verifyEmailSuccess != null:
return verifyEmailSuccess(_that);case VerifyEmailFailure() when verifyEmailFailure != null:
return verifyEmailFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _VerifyEmailInitial value)  verifyEmailInitial,required TResult Function( VerifyEmailLoading value)  verifyEmailLoading,required TResult Function( VerifyEmailSuccess value)  verifyEmailSuccess,required TResult Function( VerifyEmailFailure value)  verifyEmailFailure,}){
final _that = this;
switch (_that) {
case _VerifyEmailInitial():
return verifyEmailInitial(_that);case VerifyEmailLoading():
return verifyEmailLoading(_that);case VerifyEmailSuccess():
return verifyEmailSuccess(_that);case VerifyEmailFailure():
return verifyEmailFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _VerifyEmailInitial value)?  verifyEmailInitial,TResult? Function( VerifyEmailLoading value)?  verifyEmailLoading,TResult? Function( VerifyEmailSuccess value)?  verifyEmailSuccess,TResult? Function( VerifyEmailFailure value)?  verifyEmailFailure,}){
final _that = this;
switch (_that) {
case _VerifyEmailInitial() when verifyEmailInitial != null:
return verifyEmailInitial(_that);case VerifyEmailLoading() when verifyEmailLoading != null:
return verifyEmailLoading(_that);case VerifyEmailSuccess() when verifyEmailSuccess != null:
return verifyEmailSuccess(_that);case VerifyEmailFailure() when verifyEmailFailure != null:
return verifyEmailFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  verifyEmailInitial,TResult Function()?  verifyEmailLoading,TResult Function()?  verifyEmailSuccess,TResult Function( ApiErrorModel apiErrorModel)?  verifyEmailFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyEmailInitial() when verifyEmailInitial != null:
return verifyEmailInitial();case VerifyEmailLoading() when verifyEmailLoading != null:
return verifyEmailLoading();case VerifyEmailSuccess() when verifyEmailSuccess != null:
return verifyEmailSuccess();case VerifyEmailFailure() when verifyEmailFailure != null:
return verifyEmailFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  verifyEmailInitial,required TResult Function()  verifyEmailLoading,required TResult Function()  verifyEmailSuccess,required TResult Function( ApiErrorModel apiErrorModel)  verifyEmailFailure,}) {final _that = this;
switch (_that) {
case _VerifyEmailInitial():
return verifyEmailInitial();case VerifyEmailLoading():
return verifyEmailLoading();case VerifyEmailSuccess():
return verifyEmailSuccess();case VerifyEmailFailure():
return verifyEmailFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  verifyEmailInitial,TResult? Function()?  verifyEmailLoading,TResult? Function()?  verifyEmailSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  verifyEmailFailure,}) {final _that = this;
switch (_that) {
case _VerifyEmailInitial() when verifyEmailInitial != null:
return verifyEmailInitial();case VerifyEmailLoading() when verifyEmailLoading != null:
return verifyEmailLoading();case VerifyEmailSuccess() when verifyEmailSuccess != null:
return verifyEmailSuccess();case VerifyEmailFailure() when verifyEmailFailure != null:
return verifyEmailFailure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _VerifyEmailInitial implements VerifyEmailState {
  const _VerifyEmailInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyEmailInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerifyEmailState.verifyEmailInitial()';
}


}




/// @nodoc


class VerifyEmailLoading implements VerifyEmailState {
  const VerifyEmailLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyEmailLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerifyEmailState.verifyEmailLoading()';
}


}




/// @nodoc


class VerifyEmailSuccess implements VerifyEmailState {
  const VerifyEmailSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyEmailSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerifyEmailState.verifyEmailSuccess()';
}


}




/// @nodoc


class VerifyEmailFailure implements VerifyEmailState {
  const VerifyEmailFailure({required this.apiErrorModel});
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of VerifyEmailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyEmailFailureCopyWith<VerifyEmailFailure> get copyWith => _$VerifyEmailFailureCopyWithImpl<VerifyEmailFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyEmailFailure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'VerifyEmailState.verifyEmailFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $VerifyEmailFailureCopyWith<$Res> implements $VerifyEmailStateCopyWith<$Res> {
  factory $VerifyEmailFailureCopyWith(VerifyEmailFailure value, $Res Function(VerifyEmailFailure) _then) = _$VerifyEmailFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$VerifyEmailFailureCopyWithImpl<$Res>
    implements $VerifyEmailFailureCopyWith<$Res> {
  _$VerifyEmailFailureCopyWithImpl(this._self, this._then);

  final VerifyEmailFailure _self;
  final $Res Function(VerifyEmailFailure) _then;

/// Create a copy of VerifyEmailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(VerifyEmailFailure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
