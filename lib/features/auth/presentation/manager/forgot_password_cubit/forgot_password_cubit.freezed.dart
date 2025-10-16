// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ForgotPasswordState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordState()';
}


}

/// @nodoc
class $ForgotPasswordStateCopyWith<$Res>  {
$ForgotPasswordStateCopyWith(ForgotPasswordState _, $Res Function(ForgotPasswordState) __);
}


/// Adds pattern-matching-related methods to [ForgotPasswordState].
extension ForgotPasswordStatePatterns on ForgotPasswordState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ForgotPasswordInitial value)?  forgotPasswordInitial,TResult Function( ForgotPasswordLoading value)?  forgotPasswordLoading,TResult Function( ForgotPasswordSendOtpSuccess value)?  forgotPasswordSendOtpSuccess,TResult Function( ForgotPasswordVerifyOtpSuccess value)?  forgotPasswordVerifyOtpSuccess,TResult Function( ForgotPasswordResetSuccess value)?  forgotPasswordResetSuccess,TResult Function( ForgotPasswordFailure value)?  forgotPasswordFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForgotPasswordInitial() when forgotPasswordInitial != null:
return forgotPasswordInitial(_that);case ForgotPasswordLoading() when forgotPasswordLoading != null:
return forgotPasswordLoading(_that);case ForgotPasswordSendOtpSuccess() when forgotPasswordSendOtpSuccess != null:
return forgotPasswordSendOtpSuccess(_that);case ForgotPasswordVerifyOtpSuccess() when forgotPasswordVerifyOtpSuccess != null:
return forgotPasswordVerifyOtpSuccess(_that);case ForgotPasswordResetSuccess() when forgotPasswordResetSuccess != null:
return forgotPasswordResetSuccess(_that);case ForgotPasswordFailure() when forgotPasswordFailure != null:
return forgotPasswordFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ForgotPasswordInitial value)  forgotPasswordInitial,required TResult Function( ForgotPasswordLoading value)  forgotPasswordLoading,required TResult Function( ForgotPasswordSendOtpSuccess value)  forgotPasswordSendOtpSuccess,required TResult Function( ForgotPasswordVerifyOtpSuccess value)  forgotPasswordVerifyOtpSuccess,required TResult Function( ForgotPasswordResetSuccess value)  forgotPasswordResetSuccess,required TResult Function( ForgotPasswordFailure value)  forgotPasswordFailure,}){
final _that = this;
switch (_that) {
case _ForgotPasswordInitial():
return forgotPasswordInitial(_that);case ForgotPasswordLoading():
return forgotPasswordLoading(_that);case ForgotPasswordSendOtpSuccess():
return forgotPasswordSendOtpSuccess(_that);case ForgotPasswordVerifyOtpSuccess():
return forgotPasswordVerifyOtpSuccess(_that);case ForgotPasswordResetSuccess():
return forgotPasswordResetSuccess(_that);case ForgotPasswordFailure():
return forgotPasswordFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ForgotPasswordInitial value)?  forgotPasswordInitial,TResult? Function( ForgotPasswordLoading value)?  forgotPasswordLoading,TResult? Function( ForgotPasswordSendOtpSuccess value)?  forgotPasswordSendOtpSuccess,TResult? Function( ForgotPasswordVerifyOtpSuccess value)?  forgotPasswordVerifyOtpSuccess,TResult? Function( ForgotPasswordResetSuccess value)?  forgotPasswordResetSuccess,TResult? Function( ForgotPasswordFailure value)?  forgotPasswordFailure,}){
final _that = this;
switch (_that) {
case _ForgotPasswordInitial() when forgotPasswordInitial != null:
return forgotPasswordInitial(_that);case ForgotPasswordLoading() when forgotPasswordLoading != null:
return forgotPasswordLoading(_that);case ForgotPasswordSendOtpSuccess() when forgotPasswordSendOtpSuccess != null:
return forgotPasswordSendOtpSuccess(_that);case ForgotPasswordVerifyOtpSuccess() when forgotPasswordVerifyOtpSuccess != null:
return forgotPasswordVerifyOtpSuccess(_that);case ForgotPasswordResetSuccess() when forgotPasswordResetSuccess != null:
return forgotPasswordResetSuccess(_that);case ForgotPasswordFailure() when forgotPasswordFailure != null:
return forgotPasswordFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  forgotPasswordInitial,TResult Function()?  forgotPasswordLoading,TResult Function()?  forgotPasswordSendOtpSuccess,TResult Function()?  forgotPasswordVerifyOtpSuccess,TResult Function()?  forgotPasswordResetSuccess,TResult Function( ApiErrorModel apiErrorModel)?  forgotPasswordFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForgotPasswordInitial() when forgotPasswordInitial != null:
return forgotPasswordInitial();case ForgotPasswordLoading() when forgotPasswordLoading != null:
return forgotPasswordLoading();case ForgotPasswordSendOtpSuccess() when forgotPasswordSendOtpSuccess != null:
return forgotPasswordSendOtpSuccess();case ForgotPasswordVerifyOtpSuccess() when forgotPasswordVerifyOtpSuccess != null:
return forgotPasswordVerifyOtpSuccess();case ForgotPasswordResetSuccess() when forgotPasswordResetSuccess != null:
return forgotPasswordResetSuccess();case ForgotPasswordFailure() when forgotPasswordFailure != null:
return forgotPasswordFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  forgotPasswordInitial,required TResult Function()  forgotPasswordLoading,required TResult Function()  forgotPasswordSendOtpSuccess,required TResult Function()  forgotPasswordVerifyOtpSuccess,required TResult Function()  forgotPasswordResetSuccess,required TResult Function( ApiErrorModel apiErrorModel)  forgotPasswordFailure,}) {final _that = this;
switch (_that) {
case _ForgotPasswordInitial():
return forgotPasswordInitial();case ForgotPasswordLoading():
return forgotPasswordLoading();case ForgotPasswordSendOtpSuccess():
return forgotPasswordSendOtpSuccess();case ForgotPasswordVerifyOtpSuccess():
return forgotPasswordVerifyOtpSuccess();case ForgotPasswordResetSuccess():
return forgotPasswordResetSuccess();case ForgotPasswordFailure():
return forgotPasswordFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  forgotPasswordInitial,TResult? Function()?  forgotPasswordLoading,TResult? Function()?  forgotPasswordSendOtpSuccess,TResult? Function()?  forgotPasswordVerifyOtpSuccess,TResult? Function()?  forgotPasswordResetSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  forgotPasswordFailure,}) {final _that = this;
switch (_that) {
case _ForgotPasswordInitial() when forgotPasswordInitial != null:
return forgotPasswordInitial();case ForgotPasswordLoading() when forgotPasswordLoading != null:
return forgotPasswordLoading();case ForgotPasswordSendOtpSuccess() when forgotPasswordSendOtpSuccess != null:
return forgotPasswordSendOtpSuccess();case ForgotPasswordVerifyOtpSuccess() when forgotPasswordVerifyOtpSuccess != null:
return forgotPasswordVerifyOtpSuccess();case ForgotPasswordResetSuccess() when forgotPasswordResetSuccess != null:
return forgotPasswordResetSuccess();case ForgotPasswordFailure() when forgotPasswordFailure != null:
return forgotPasswordFailure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _ForgotPasswordInitial implements ForgotPasswordState {
  const _ForgotPasswordInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotPasswordInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordState.forgotPasswordInitial()';
}


}




/// @nodoc


class ForgotPasswordLoading implements ForgotPasswordState {
  const ForgotPasswordLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordState.forgotPasswordLoading()';
}


}




/// @nodoc


class ForgotPasswordSendOtpSuccess implements ForgotPasswordState {
  const ForgotPasswordSendOtpSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordSendOtpSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordState.forgotPasswordSendOtpSuccess()';
}


}




/// @nodoc


class ForgotPasswordVerifyOtpSuccess implements ForgotPasswordState {
  const ForgotPasswordVerifyOtpSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordVerifyOtpSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordState.forgotPasswordVerifyOtpSuccess()';
}


}




/// @nodoc


class ForgotPasswordResetSuccess implements ForgotPasswordState {
  const ForgotPasswordResetSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordResetSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ForgotPasswordState.forgotPasswordResetSuccess()';
}


}




/// @nodoc


class ForgotPasswordFailure implements ForgotPasswordState {
  const ForgotPasswordFailure({required this.apiErrorModel});
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotPasswordFailureCopyWith<ForgotPasswordFailure> get copyWith => _$ForgotPasswordFailureCopyWithImpl<ForgotPasswordFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordFailure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'ForgotPasswordState.forgotPasswordFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $ForgotPasswordFailureCopyWith<$Res> implements $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordFailureCopyWith(ForgotPasswordFailure value, $Res Function(ForgotPasswordFailure) _then) = _$ForgotPasswordFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$ForgotPasswordFailureCopyWithImpl<$Res>
    implements $ForgotPasswordFailureCopyWith<$Res> {
  _$ForgotPasswordFailureCopyWithImpl(this._self, this._then);

  final ForgotPasswordFailure _self;
  final $Res Function(ForgotPasswordFailure) _then;

/// Create a copy of ForgotPasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(ForgotPasswordFailure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
