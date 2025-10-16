// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_out_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LogOutState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogOutState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LogOutState()';
}


}

/// @nodoc
class $LogOutStateCopyWith<$Res>  {
$LogOutStateCopyWith(LogOutState _, $Res Function(LogOutState) __);
}


/// Adds pattern-matching-related methods to [LogOutState].
extension LogOutStatePatterns on LogOutState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LogOutInitial value)?  logOutInitial,TResult Function( LogOutLoading value)?  logOutLoading,TResult Function( LogOutSuccess value)?  logOutSuccess,TResult Function( LogOutFailure value)?  logOutFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LogOutInitial() when logOutInitial != null:
return logOutInitial(_that);case LogOutLoading() when logOutLoading != null:
return logOutLoading(_that);case LogOutSuccess() when logOutSuccess != null:
return logOutSuccess(_that);case LogOutFailure() when logOutFailure != null:
return logOutFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LogOutInitial value)  logOutInitial,required TResult Function( LogOutLoading value)  logOutLoading,required TResult Function( LogOutSuccess value)  logOutSuccess,required TResult Function( LogOutFailure value)  logOutFailure,}){
final _that = this;
switch (_that) {
case _LogOutInitial():
return logOutInitial(_that);case LogOutLoading():
return logOutLoading(_that);case LogOutSuccess():
return logOutSuccess(_that);case LogOutFailure():
return logOutFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LogOutInitial value)?  logOutInitial,TResult? Function( LogOutLoading value)?  logOutLoading,TResult? Function( LogOutSuccess value)?  logOutSuccess,TResult? Function( LogOutFailure value)?  logOutFailure,}){
final _that = this;
switch (_that) {
case _LogOutInitial() when logOutInitial != null:
return logOutInitial(_that);case LogOutLoading() when logOutLoading != null:
return logOutLoading(_that);case LogOutSuccess() when logOutSuccess != null:
return logOutSuccess(_that);case LogOutFailure() when logOutFailure != null:
return logOutFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  logOutInitial,TResult Function()?  logOutLoading,TResult Function()?  logOutSuccess,TResult Function( ApiErrorModel apiErrorModel)?  logOutFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LogOutInitial() when logOutInitial != null:
return logOutInitial();case LogOutLoading() when logOutLoading != null:
return logOutLoading();case LogOutSuccess() when logOutSuccess != null:
return logOutSuccess();case LogOutFailure() when logOutFailure != null:
return logOutFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  logOutInitial,required TResult Function()  logOutLoading,required TResult Function()  logOutSuccess,required TResult Function( ApiErrorModel apiErrorModel)  logOutFailure,}) {final _that = this;
switch (_that) {
case _LogOutInitial():
return logOutInitial();case LogOutLoading():
return logOutLoading();case LogOutSuccess():
return logOutSuccess();case LogOutFailure():
return logOutFailure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  logOutInitial,TResult? Function()?  logOutLoading,TResult? Function()?  logOutSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  logOutFailure,}) {final _that = this;
switch (_that) {
case _LogOutInitial() when logOutInitial != null:
return logOutInitial();case LogOutLoading() when logOutLoading != null:
return logOutLoading();case LogOutSuccess() when logOutSuccess != null:
return logOutSuccess();case LogOutFailure() when logOutFailure != null:
return logOutFailure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _LogOutInitial implements LogOutState {
  const _LogOutInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogOutInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LogOutState.logOutInitial()';
}


}




/// @nodoc


class LogOutLoading implements LogOutState {
  const LogOutLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogOutLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LogOutState.logOutLoading()';
}


}




/// @nodoc


class LogOutSuccess implements LogOutState {
  const LogOutSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogOutSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LogOutState.logOutSuccess()';
}


}




/// @nodoc


class LogOutFailure implements LogOutState {
  const LogOutFailure({required this.apiErrorModel});
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of LogOutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogOutFailureCopyWith<LogOutFailure> get copyWith => _$LogOutFailureCopyWithImpl<LogOutFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogOutFailure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'LogOutState.logOutFailure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $LogOutFailureCopyWith<$Res> implements $LogOutStateCopyWith<$Res> {
  factory $LogOutFailureCopyWith(LogOutFailure value, $Res Function(LogOutFailure) _then) = _$LogOutFailureCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$LogOutFailureCopyWithImpl<$Res>
    implements $LogOutFailureCopyWith<$Res> {
  _$LogOutFailureCopyWithImpl(this._self, this._then);

  final LogOutFailure _self;
  final $Res Function(LogOutFailure) _then;

/// Create a copy of LogOutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(LogOutFailure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
