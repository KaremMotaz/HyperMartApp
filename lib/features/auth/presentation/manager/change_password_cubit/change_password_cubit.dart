import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/errors/failure.dart';
import '../../../data/models/change_password_request_body.dart';
import '../../../domain/auth_repo.dart';

part 'change_password_state.dart';

class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  ChangePasswordCubit({required this.authRepo})
    : super(ChangePasswordInitialState());
  final AuthRepo authRepo;

  Future<void> changePassword({
    required ChangePasswordRequestBody changePasswordRequestBody,
  }) async {
    emit(ChangePasswordLoadingState());

    final Either<Failure, Unit> result = await authRepo.changePassword(
      body: changePasswordRequestBody,
    );

    result.fold(
      (failure) {
        emit(
          ChangePasswordFailureState(
            message: failure.message,
            details: failure.details,
          ),
        );
      },
      (unit) {
        emit(ChangePasswordSuccessState());
      },
    );
  }
}
