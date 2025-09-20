import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/helpers/constants.dart';
import '../../../../../core/services/cache_helper.dart';

import '../../../../../core/errors/failure.dart';
import '../../../domain/auth_repo.dart';

part 'log_out_state.dart';

class LogOutCubit extends Cubit<LogOutState> {
  LogOutCubit({required this.authRepo}) : super(LogOutInitialState());
  final AuthRepo authRepo;

  Future<void> logOut() async {
    emit(LogOutLoadingState());
    final Either<Failure, Unit> result = await authRepo.logOut();
    result.fold(
      (failure) {
        emit(
          LogOutFailureState(
            message: failure.message,
            details: failure.details,
          ),
        );
      },
      (unit) {
        CacheHelper.set(key: kRememberMe, value: false);
        emit(LogOutSuccessState());
      },
    );
  }
}
