part of 'resend_otp_cubit.dart';

sealed class ResendOtpState extends Equatable {
  const ResendOtpState();

  @override
  List<Object> get props => [];
}

final class ResendOtpInitialState extends ResendOtpState {}

final class ResendOtpLoadingState extends ResendOtpState {}

final class ResendOtpSuccessState extends ResendOtpState {}

class ResendOtpTimerState extends ResendOtpState {
  final int remainingSeconds;

  const ResendOtpTimerState(this.remainingSeconds);

  @override
  List<Object> get props => [remainingSeconds];
}

class ResendOtpAvailableState extends ResendOtpState {}

final class ResendOtpFailureState extends ResendOtpState {
  final String message;
  final List<String> details;

  const ResendOtpFailureState({required this.message, this.details = const []});

  @override
  List<Object> get props => [message, details];
}
