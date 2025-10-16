part of 'verify_email_cubit.dart';

@freezed
class VerifyEmailState with _$VerifyEmailState {
  const factory VerifyEmailState.verifyEmailInitial() = _VerifyEmailInitial;
  const factory VerifyEmailState.verifyEmailLoading() = VerifyEmailLoading;
  const factory VerifyEmailState.verifyEmailSuccess() = VerifyEmailSuccess;
  const factory VerifyEmailState.verifyEmailFailure({
    required ApiErrorModel apiErrorModel,
  }) = VerifyEmailFailure;
}
