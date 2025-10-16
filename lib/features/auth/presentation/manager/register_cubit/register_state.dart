part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.registerInitial() = _RegisterInitial;
  const factory RegisterState.registerLoading() = RegisterLoading;
  const factory RegisterState.registerSuccess({required String email}) =
      RegisterSuccess;
  const factory RegisterState.registerFailure({
    required ApiErrorModel apiErrorModel,
  }) = RegisterFailure;
}
