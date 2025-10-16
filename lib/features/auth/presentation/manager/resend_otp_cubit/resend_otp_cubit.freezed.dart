// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resend_otp_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ResendOtpState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResendOtpState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResendOtpState()';
}


}

/// @nodoc
class $ResendOtpStateCopyWith<$Res>  {
$ResendOtpStateCopyWith(ResendOtpState _, $Res Function(ResendOtpState) __);
}


/// Adds pattern-matching-related methods to [ResendOtpState].
extension ResendOtpStatePatterns on ResendOtpState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ResendOtpInitial value)?  resendOtpInitial,TResult Function( ResendOtpLoading value)?  resendOtpLoading,TResult Function( ResendOtpSuccess value)?  resendOtpSuccess,TResult Function( ResendOtpTimer value)?  resendOtpTimer,TResult Function( ResendOtpAvailable value)?  resendOtpAvailable,TResult Function( ResendOtpFailure value)?  resendOtpFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResendOtpInitial() when resendOtpInitial != null:
return resendOtpInitial(_that);case ResendOtpLoading() when resendOtpLoading != null:
return resendOtpLoading(_that);case ResendOtpSuccess() when resendOtpSuccess != null:
return resendOtpSuccess(_that);case ResendOtpTimer() when resendOtpTimer != null:
return resendOtpTimer(_that);case ResendOtpAvailable() when resendOtpAvailable != null:
return resendOtpAvailable(_that);case ResendOtpFailure() when resendOtpFailure != null:
return resendOtpFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ResendOtpInitial value)  resendOtpInitial,required TResult Function( ResendOtpLoading value)  resendOtpLoading,required TResult Function( ResendOtpSuccess value)  resendOtpSuccess,required TResult Function( ResendOtpTimer value)  resendOtpTimer,required TResult Function( ResendOtpAvailable value)  resendOtpAvailable,required TResult Function( ResendOtpFailure value)  resendOtpFailure,}){
final _that = this;
switch (_that) {
case _ResendOtpInitial():
return resendOtpInitial(_that);case ResendOtpLoading():
return resendOtpLoading(_that);case ResendOtpSuccess():
return resendOtpSuccess(_that);case ResendOtpTimer():
return resendOtpTimer(_that);case ResendOtpAvailable():
return resendOtpAvailable(_that);case ResendOtpFailure():
return resendOtpFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ResendOtpInitial value)?  resendOtpInitial,TResult? Function( ResendOtpLoading value)?  resendOtpLoading,TResult? Function( ResendOtpSuccess value)?  resendOtpSuccess,TResult? Function( ResendOtpTimer value)?  resendOtpTimer,TResult? Function( ResendOtpAvailable value)?  resendOtpAvailable,TResult? Function( ResendOtpFailure value)?  resendOtpFailure,}){
final _that = this;
switch (_that) {
case _ResendOtpInitial() when resendOtpInitial != null:
return resendOtpInitial(_that);case ResendOtpLoading() when resendOtpLoading != null:
return resendOtpLoading(_that);case ResendOtpSuccess() when resendOtpSuccess != null:
return resendOtpSuccess(_that);case ResendOtpTimer() when resendOtpTimer != null:
return resendOtpTimer(_that);case ResendOtpAvailable() when resendOtpAvailable != null:
return resendOtpAvailable(_that);case ResendOtpFailure() when resendOtpFailure != null:
return resendOtpFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  resendOtpInitial,TResult Function()?  resendOtpLoading,TResult Function( int remainingSeconds)?  resendOtpSuccess,TResult Function( int remainingSeconds)?  resendOtpTimer,TResult Function()?  resendOtpAvailable,TResult Function( ApiErrorModel apiErrorModel)?  resendOtpFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResendOtpInitial() when resendOtpInitial != null:
return resendOtpInitial();case ResendOtpLoading() when resendOtpLoading != null:
return resendOtpLoading();case ResendOtpSuccess() when resendOtpSuccess != null:
return resendOtpSuccess(_that.remainingSeconds);case ResendOtpTimer() when resendOtpTimer != null:
return resendOtpTimer(_that.remainingSeconds);case ResendOtpAvailable() when resendOtpAvailable != null:
return resendOtpAvailable();case ResendOtpFailure() when resendOtpFailure != null:
return resendOtpFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  resendOtpInitial,required TResult Function()  resendOtpLoading,required TResult Function( int remainingSeconds)  resendOtpSuccess,required TResult Function( int remainingSeconds)  resendOtpTimer,required TResult Function()  resendOtpAvailable,required TResult Function( ApiErrorModel apiErrorModel)  resendOtpFailure,}) {final _that = this;
switch (_that) {
case _ResendOtpInitial():
return resendOtpInitial();case ResendOtpLoading():
return resendOtpLoading();case ResendOtpSuccess():
return resendOtpSuccess(_that.remainingSeconds);case ResendOtpTimer():
return resendOtpTimer(_that.remainingSeconds);case ResendOtpAvailable():
return resendOtpAvailable();case ResendOtpFailure():
return resendOtpFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  resendOtpInitial,TResult? Function()?  resendOtpLoading,TResult? Function( int remainingSeconds)?  resendOtpSuccess,TResult? Function( int remainingSeconds)?  resendOtpTimer,TResult? Function()?  resendOtpAvailable,TResult? Function( ApiErrorModel apiErrorModel)?  resendOtpFailure,}) {final _that = this;
switch (_that) {
case _ResendOtpInitial() when resendOtpInitial != null:
return resendOtpInitial();case ResendOtpLoading() when resendOtpLoading != null:
return resendOtpLoading();case ResendOtpSuccess() when resendOtpSuccess != null:
return resendOtpSuccess(_that.remainingSeconds);case ResendOtpTimer() when resendOtpTimer != null:
return resendOtpTimer(_that.remainingSeconds);case ResendOtpAvailable() when resendOtpAvailable != null:
return resendOtpAvailable();case ResendOtpFailure() when resendOtpFailure != null:
return resendOtpFailure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _ResendOtpInitial implements ResendOtpState {
  const _ResendOtpInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResendOtpInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResendOtpState.resendOtpInitial()';
}


}




/// @nodoc


class ResendOtpLoading implements ResendOtpState {
  const ResendOtpLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResendOtpLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResendOtpState.resendOtpLoading()';
}


}




/// @nodoc


class ResendOtpSuccess implements ResendOtpState {
  const ResendOtpSuccess({required this.remainingSeconds});
  

 final  int remainingSeconds;

/// Create a copy of ResendOtpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResendOtpSuccessCopyWith<ResendOtpSuccess> get copyWith => _$ResendOtpSuccessCopyWithImpl<ResendOtpSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResendOtpSuccess&&(identical(other.remainingSeconds, remainingSeconds) || other.remainingSeconds == remainingSeconds));
}


@override
int get hashCode => Object.hash(runtimeType,remainingSeconds);

@override
String toString() {
  return 'ResendOtpState.resendOtpSuccess(remainingSeconds: $remainingSeconds)';
}


}

/// @nodoc
abstract mixin class $ResendOtpSuccessCopyWith<$Res> implements $ResendOtpStateCopyWith<$Res> {
  factory $ResendOtpSuccessCopyWith(ResendOtpSuccess value, $Res Function(ResendOtpSuccess) _then) = _$ResendOtpSuccessCopyWithImpl;
@useResult
$Res call({
 int remainingSeconds
});




}
/// @nodoc
class _$ResendOtpSuccessCopyWithImpl<$Res>
    implements $ResendOtpSuccessCopyWith<$Res> {
  _$ResendOtpSuccessCopyWithImpl(this._self, this._then);

  final ResendOtpSuccess _self;
  final $Res Function(ResendOtpSuccess) _then;

/// Create a copy of ResendOtpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? remainingSeconds = null,}) {
  return _then(ResendOtpSuccess(
remainingSeconds: null == remainingSeconds ? _self.remainingSeconds : remainingSeconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ResendOtpTimer implements ResendOtpState {
  const ResendOtpTimer({required this.remainingSeconds});
  

 final  int remainingSeconds;

/// Create a copy of ResendOtpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResendOtpTimerCopyWith<ResendOtpTimer> get copyWith => _$ResendOtpTimerCopyWithImpl<ResendOtpTimer>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResendOtpTimer&&(identical(other.remainingSeconds, remainingSeconds) || other.remainingSeconds == remainingSeconds));
}


@override
int get hashCode => Object.hash(runtimeType,remainingSeconds);

@override
String toString() {
  return 'ResendOtpState.resendOtpTimer(remainingSeconds: $remainingSeconds)';
}


}

/// @nodoc
abstract mixin class $ResendOtpTimerCopyWith<$Res> implements $ResendOtpStateCopyWith<$Res> {
  factory $ResendOtpTimerCopyWith(ResendOtpTimer value, $Res Function(ResendOtpTimer) _then) = _$ResendOtpTimerCopyWithImpl;
@useResult
$Res call({
 int remainingSeconds
});




}
/// @nodoc
class _$ResendOtpTimerCopyWithImpl<$Res>
    implements $ResendOtpTimerCopyWith<$Res> {
  _$ResendOtpTimerCopyWithImpl(this._self, this._then);

  final ResendOtpTimer _self;
  final $Res Function(ResendOtpTimer) _then;

/// Create a copy of ResendOtpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? remainingSeconds = null,}) {
  return _then(ResendOtpTimer(
remainingSeconds: null == remainingSeconds ? _self.remainingSeconds : remainingSeconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ResendOtpAvailable implements ResendOtpState {
  const ResendOtpAvailable();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResendOtpAvailable);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResendOtpState.resendOtpAvailable()';
}


}




/// @nodoc


class ResendOtpFailure implements ResendOtpState {
  const ResendOtpFailure({required this.apiErrorModel});
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of ResendOtpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResendOtpFailureCopyWith<ResendOtpFailure> get copyWith => _$ResendOtpFailureCopyWithImpl<ResendOtpFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResendOtpFailure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'ResendOtpState.resendOtpFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $ResendOtpFailureCopyWith<$Res> implements $ResendOtpStateCopyWith<$Res> {
  factory $ResendOtpFailureCopyWith(ResendOtpFailure value, $Res Function(ResendOtpFailure) _then) = _$ResendOtpFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$ResendOtpFailureCopyWithImpl<$Res>
    implements $ResendOtpFailureCopyWith<$Res> {
  _$ResendOtpFailureCopyWithImpl(this._self, this._then);

  final ResendOtpFailure _self;
  final $Res Function(ResendOtpFailure) _then;

/// Create a copy of ResendOtpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(ResendOtpFailure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
