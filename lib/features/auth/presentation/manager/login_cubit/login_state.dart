part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.loginInitial() = _LoginInitial;
  const factory LoginState.loginLoading() = LoginLoading;
  const factory LoginState.loginSuccess() = LoginSuccess;
  const factory LoginState.loginFailure({
    required ApiErrorModel apiErrorModel,
  }) = LoginFailure;
}
