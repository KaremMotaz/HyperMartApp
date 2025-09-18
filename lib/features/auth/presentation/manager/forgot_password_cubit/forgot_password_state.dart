part of 'forgot_password_cubit.dart';

sealed class ForgotPasswordState extends Equatable {
  const ForgotPasswordState();

  @override
  List<Object> get props => [];
}

final class ForgotPasswordInitialState extends ForgotPasswordState {}

final class ForgotPasswordLoadingState extends ForgotPasswordState {}

class ForgotPasswordSendOtpSuccessState extends ForgotPasswordState {}

class ForgotPasswordVerifyOtpSuccessState extends ForgotPasswordState {}

class ForgotPasswordResendOtpSuccessState extends ForgotPasswordState {}

class ForgotPasswordResetSuccessState extends ForgotPasswordState {}

final class ForgotPasswordFailureState extends ForgotPasswordState {
  final String message;
  final List<String> details;

  const ForgotPasswordFailureState({
    required this.message,
    required this.details,
  });
}
