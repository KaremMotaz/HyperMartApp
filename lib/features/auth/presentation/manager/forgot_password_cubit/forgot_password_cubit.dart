import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/errors/failure.dart';
import '../../../data/models/forgot_password_request_body.dart';
import '../../../data/models/reset_password_request_body.dart';
import '../../../domain/auth_repo.dart';
part 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit({required this.authRepo})
    : super(ForgotPasswordInitialState());

  final AuthRepo authRepo;

  Future<void> forgotPassword({
    required ForgotPasswordRequestBody forgotPasswordRequestBody,
  }) async {
    emit(ForgotPasswordLoadingState());

    final Either<Failure, Unit> result = await authRepo.forgotPassword(
      body: forgotPasswordRequestBody,
    );

    result.fold(
      (failure) {
        emit(
          ForgotPasswordFailureState(
            message: failure.message,
            details: failure.details,
          ),
        );
      },
      (unit) {
        emit(ForgotPasswordSuccessState());
      },
    );
  }

  Future<void> resetPassword({
    required ResetPasswordRequestBody resetPasswordRequestBody,
  }) async {
    emit(ForgotPasswordLoadingState());

    final Either<Failure, Unit> result = await authRepo.resetPassword(
      body: resetPasswordRequestBody,
    );

    result.fold(
      (failure) {
        emit(
          ForgotPasswordFailureState(
            message: failure.message,
            details: failure.details,
          ),
        );
      },
      (unit) {
        emit(ForgotPasswordSuccessState());
      },
    );
  }
}
