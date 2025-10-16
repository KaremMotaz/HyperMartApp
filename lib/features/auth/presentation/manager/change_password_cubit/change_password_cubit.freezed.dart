// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChangePasswordState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChangePasswordState()';
}


}

/// @nodoc
class $ChangePasswordStateCopyWith<$Res>  {
$ChangePasswordStateCopyWith(ChangePasswordState _, $Res Function(ChangePasswordState) __);
}


/// Adds pattern-matching-related methods to [ChangePasswordState].
extension ChangePasswordStatePatterns on ChangePasswordState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ChangePasswordInitial value)?  changePasswordInitial,TResult Function( ChangePasswordLoading value)?  changePasswordLoading,TResult Function( ChangePasswordSuccess value)?  changePasswordSuccess,TResult Function( ChangePasswordFailure value)?  changePasswordFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangePasswordInitial() when changePasswordInitial != null:
return changePasswordInitial(_that);case ChangePasswordLoading() when changePasswordLoading != null:
return changePasswordLoading(_that);case ChangePasswordSuccess() when changePasswordSuccess != null:
return changePasswordSuccess(_that);case ChangePasswordFailure() when changePasswordFailure != null:
return changePasswordFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ChangePasswordInitial value)  changePasswordInitial,required TResult Function( ChangePasswordLoading value)  changePasswordLoading,required TResult Function( ChangePasswordSuccess value)  changePasswordSuccess,required TResult Function( ChangePasswordFailure value)  changePasswordFailure,}){
final _that = this;
switch (_that) {
case _ChangePasswordInitial():
return changePasswordInitial(_that);case ChangePasswordLoading():
return changePasswordLoading(_that);case ChangePasswordSuccess():
return changePasswordSuccess(_that);case ChangePasswordFailure():
return changePasswordFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ChangePasswordInitial value)?  changePasswordInitial,TResult? Function( ChangePasswordLoading value)?  changePasswordLoading,TResult? Function( ChangePasswordSuccess value)?  changePasswordSuccess,TResult? Function( ChangePasswordFailure value)?  changePasswordFailure,}){
final _that = this;
switch (_that) {
case _ChangePasswordInitial() when changePasswordInitial != null:
return changePasswordInitial(_that);case ChangePasswordLoading() when changePasswordLoading != null:
return changePasswordLoading(_that);case ChangePasswordSuccess() when changePasswordSuccess != null:
return changePasswordSuccess(_that);case ChangePasswordFailure() when changePasswordFailure != null:
return changePasswordFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  changePasswordInitial,TResult Function()?  changePasswordLoading,TResult Function()?  changePasswordSuccess,TResult Function( ApiErrorModel apiErrorModel)?  changePasswordFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangePasswordInitial() when changePasswordInitial != null:
return changePasswordInitial();case ChangePasswordLoading() when changePasswordLoading != null:
return changePasswordLoading();case ChangePasswordSuccess() when changePasswordSuccess != null:
return changePasswordSuccess();case ChangePasswordFailure() when changePasswordFailure != null:
return changePasswordFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  changePasswordInitial,required TResult Function()  changePasswordLoading,required TResult Function()  changePasswordSuccess,required TResult Function( ApiErrorModel apiErrorModel)  changePasswordFailure,}) {final _that = this;
switch (_that) {
case _ChangePasswordInitial():
return changePasswordInitial();case ChangePasswordLoading():
return changePasswordLoading();case ChangePasswordSuccess():
return changePasswordSuccess();case ChangePasswordFailure():
return changePasswordFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  changePasswordInitial,TResult? Function()?  changePasswordLoading,TResult? Function()?  changePasswordSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  changePasswordFailure,}) {final _that = this;
switch (_that) {
case _ChangePasswordInitial() when changePasswordInitial != null:
return changePasswordInitial();case ChangePasswordLoading() when changePasswordLoading != null:
return changePasswordLoading();case ChangePasswordSuccess() when changePasswordSuccess != null:
return changePasswordSuccess();case ChangePasswordFailure() when changePasswordFailure != null:
return changePasswordFailure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _ChangePasswordInitial implements ChangePasswordState {
  const _ChangePasswordInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangePasswordInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChangePasswordState.changePasswordInitial()';
}


}




/// @nodoc


class ChangePasswordLoading implements ChangePasswordState {
  const ChangePasswordLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChangePasswordState.changePasswordLoading()';
}


}




/// @nodoc


class ChangePasswordSuccess implements ChangePasswordState {
  const ChangePasswordSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChangePasswordState.changePasswordSuccess()';
}


}




/// @nodoc


class ChangePasswordFailure implements ChangePasswordState {
  const ChangePasswordFailure({required this.apiErrorModel});
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of ChangePasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePasswordFailureCopyWith<ChangePasswordFailure> get copyWith => _$ChangePasswordFailureCopyWithImpl<ChangePasswordFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordFailure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'ChangePasswordState.changePasswordFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $ChangePasswordFailureCopyWith<$Res> implements $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordFailureCopyWith(ChangePasswordFailure value, $Res Function(ChangePasswordFailure) _then) = _$ChangePasswordFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$ChangePasswordFailureCopyWithImpl<$Res>
    implements $ChangePasswordFailureCopyWith<$Res> {
  _$ChangePasswordFailureCopyWithImpl(this._self, this._then);

  final ChangePasswordFailure _self;
  final $Res Function(ChangePasswordFailure) _then;

/// Create a copy of ChangePasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(ChangePasswordFailure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
