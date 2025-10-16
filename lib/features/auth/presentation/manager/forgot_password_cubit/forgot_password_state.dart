part of 'forgot_password_cubit.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState.forgotPasswordInitial() =
      _ForgotPasswordInitial;
  const factory ForgotPasswordState.forgotPasswordLoading() =
      ForgotPasswordLoading;

  const factory ForgotPasswordState.forgotPasswordSendOtpSuccess() =
      ForgotPasswordSendOtpSuccess;
  const factory ForgotPasswordState.forgotPasswordVerifyOtpSuccess() =
      ForgotPasswordVerifyOtpSuccess;
        const factory ForgotPasswordState.forgotPasswordResetSuccess() =
      ForgotPasswordResetSuccess;
  const factory ForgotPasswordState.forgotPasswordFailure({
    required ApiErrorModel apiErrorModel,
  }) = ForgotPasswordFailure;
}
