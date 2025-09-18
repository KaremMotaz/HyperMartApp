part of 'forgot_password_cubit.dart';

sealed class ForgotPasswordState extends Equatable {
  const ForgotPasswordState();

  @override
  List<Object> get props => [];
}

final class ForgotPasswordInitialState extends ForgotPasswordState {}

final class ForgotPasswordLoadingState extends ForgotPasswordState {}

final class ForgotPasswordSendOtpSuccessState extends ForgotPasswordState {}

final class ForgotPasswordVerifyOtpSuccessState extends ForgotPasswordState {}

final class ForgotPasswordResetSuccessState extends ForgotPasswordState {}

final class ForgotPasswordFailureState extends ForgotPasswordState {
  final String message;
  final List<String> details;

  const ForgotPasswordFailureState({
    required this.message,
    required this.details,
  });
}
