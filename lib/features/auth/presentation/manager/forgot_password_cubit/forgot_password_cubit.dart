import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/repos/auth_repo.dart';

import '../../../../../core/errors/failure.dart';
import '../../../data/models/forgot_password_request_body.dart';
import '../../../data/models/reset_password_request_body.dart';
import '../../../data/models/validate_otp_request_body.dart';

part 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit({required this.authRepo})
    : super(ForgotPasswordInitialState());

  final AuthRepo authRepo;

  String? email;
  String? otp;

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
        email = forgotPasswordRequestBody.email;
        emit(ForgotPasswordSendOtpSuccessState());
      },
    );
  }

  Future<void> validateOtp({required String otp}) async {
    emit(ForgotPasswordLoadingState());

    final Either<Failure, Unit> result = await authRepo.validateOtp(
      body: ValidateOTPRequestBody(email: email!, otp: otp),
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
        this.otp = otp;
        emit(ForgotPasswordVerifyOtpSuccessState());
      },
    );
  }

  Future<void> resetPassword({required String newPassword}) async {
    emit(ForgotPasswordLoadingState());

    final Either<Failure, Unit> result = await authRepo.resetPassword(
      body: ResetPasswordRequestBody(
        email: email!,
        otp: otp!,
        newPassword: newPassword,
      ),
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
        emit(ForgotPasswordResetSuccessState());
      },
    );
  }
}
