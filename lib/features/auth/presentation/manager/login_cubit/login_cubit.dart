import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/auth_repo.dart';
import '../../../domain/user_entity.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.authRepo}) : super(LoginInitialState());

  final AuthRepo authRepo;

  Future<void> signinWithEmailAndPassword({
    required TextEditingController passwordController,
    required TextEditingController emailController,
  }) async {
    emit(LoginLoadingState());
    final result = await authRepo.signinWithEmailAndPassword(
      password: passwordController.text,
      email: emailController.text,
    );
    result.fold(
      (failure) {
        emit(LoginFailureState(message: failure.message));
      },
      (userEntity) {
        emit(LoginSuccessState(userEntity: userEntity));
      },
    );
  }
}
