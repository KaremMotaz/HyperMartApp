import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/core/helpers/constants.dart';
import 'package:hyper_mart_app/core/services/cache_helper.dart';
import '../../../../../core/errors/failure.dart';
import '../../../data/models/login_request_body.dart';
import '../../../data/models/login_response.dart';
import '../../../domain/auth_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.authRepo}) : super(LoginInitialState());

  final AuthRepo authRepo;
  bool isSelected = false;

  void setRememberMe({required bool isSelected}) {
    this.isSelected = isSelected;
    emit(LoginInitialState());
  }

  Future<void> loginWithEmailAndPassword({
    required LoginRequestBody loginRequestBody,
  }) async {
    emit(LoginLoadingState());

    final Either<Failure, LoginResponse> result = await authRepo
        .loginWithEmailAndPassword(body: loginRequestBody);

    result.fold(
      (failure) {
        emit(
          LoginFailureState(message: failure.message, details: failure.details),
        );
      },
      (loginResponse) {
        CacheHelper.set(key: kRememberMe, value: isSelected);
        emit(LoginSuccessState());
      },
    );
  }
}
