part of 'resend_otp_cubit.dart';

@freezed
class ResendOtpState with _$ResendOtpState {
  const factory ResendOtpState.resendOtpInitial() = _ResendOtpInitial;
  const factory ResendOtpState.resendOtpLoading() = ResendOtpLoading;
  const factory ResendOtpState.resendOtpSuccess({
    required int remainingSeconds,
  }) = ResendOtpSuccess;
  const factory ResendOtpState.resendOtpTimer({required int remainingSeconds}) =
      ResendOtpTimer;
  const factory ResendOtpState.resendOtpAvailable() = ResendOtpAvailable;

  const factory ResendOtpState.resendOtpFailure({
    required ApiErrorModel apiErrorModel,
  }) = ResendOtpFailure;
}
