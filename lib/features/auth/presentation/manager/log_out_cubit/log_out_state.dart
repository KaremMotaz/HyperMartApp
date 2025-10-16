part of 'log_out_cubit.dart';

@freezed
class LogOutState with _$LogOutState {
  const factory LogOutState.logOutInitial() = _LogOutInitial;
  const factory LogOutState.logOutLoading() = LogOutLoading;
  const factory LogOutState.logOutSuccess() = LogOutSuccess;
  const factory LogOutState.logOutFailure({
    required ApiErrorModel apiErrorModel,
  }) = LogOutFailure;
}
