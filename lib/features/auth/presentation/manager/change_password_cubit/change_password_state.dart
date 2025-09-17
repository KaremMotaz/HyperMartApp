part of 'change_password_cubit.dart';

sealed class ChangePasswordState extends Equatable {
  const ChangePasswordState();

  @override
  List<Object> get props => [];
}

final class ChangePasswordInitialState extends ChangePasswordState {}

final class ChangePasswordLoadingState extends ChangePasswordState {}

final class ChangePasswordSuccessState extends ChangePasswordState {}

final class ChangePasswordFailureState extends ChangePasswordState {
  final String message;
  final List<String> details;

  const ChangePasswordFailureState({
    required this.message,
    required this.details,
  });
}
