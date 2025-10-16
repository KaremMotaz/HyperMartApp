part of 'change_password_cubit.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState.changePasswordInitial() =
      _ChangePasswordInitial;
  const factory ChangePasswordState.changePasswordLoading() =
      ChangePasswordLoading;
  const factory ChangePasswordState.changePasswordSuccess() =
      ChangePasswordSuccess;
  const factory ChangePasswordState.changePasswordFailure({
    required ApiErrorModel apiErrorModel,
  }) = ChangePasswordFailure;
}
