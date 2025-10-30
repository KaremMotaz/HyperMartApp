import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/networking/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../data/models/forgot_password_request_body.dart';
import '../../../data/models/reset_password_request_body.dart';
import '../../../data/models/validate_otp_request_body.dart';
import '../../../data/repos/auth_repo.dart';

part 'forgot_password_cubit.freezed.dart';
part 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit({required this.authRepo})
    : super(const ForgotPasswordState.forgotPasswordInitial());

  final AuthRepo authRepo;

  String? email;
  String? otp;

  Future<void> forgotPassword({
    required ForgotPasswordRequestBody forgotPasswordRequestBody,
  }) async {
    emit(const ForgotPasswordState.forgotPasswordLoading());

    final ApiResult result = await authRepo.forgotPassword(
      body: forgotPasswordRequestBody,
    );

    result.when(
      success: (unit) {
        email = forgotPasswordRequestBody.email;
        emit(const ForgotPasswordState.forgotPasswordSendOtpSuccess());
      },
      failure: (apiErrorModel) {
        emit(
          ForgotPasswordState.forgotPasswordFailure(
            apiErrorModel: apiErrorModel,
          ),
        );
      },
    );
  }

  Future<void> validateOtp({required String otp}) async {
    emit(const ForgotPasswordState.forgotPasswordLoading());

    final ApiResult result = await authRepo.validateOtp(
      body: ValidateOTPRequestBody(email: email!, otp: otp),
    );

    result.when(
      success: (unit) {
        this.otp = otp;
        emit(const ForgotPasswordState.forgotPasswordVerifyOtpSuccess());
      },
      failure: (apiErrorModel) {
        emit(
          ForgotPasswordState.forgotPasswordFailure(
            apiErrorModel: apiErrorModel,
          ),
        );
      },
    );
  }

  Future<void> resetPassword({required String newPassword}) async {
    emit(const ForgotPasswordState.forgotPasswordLoading());

    final ApiResult result = await authRepo.resetPassword(
      body: ResetPasswordRequestBody(
        email: email!,
        otp: otp!,
        newPassword: newPassword,
      ),
    );
    result.when(
      success: (unit) {
        emit(const ForgotPasswordState.forgotPasswordResetSuccess());
      },
      failure: (apiErrorModel) {
        emit(
          ForgotPasswordState.forgotPasswordFailure(
            apiErrorModel: apiErrorModel,
          ),
        );
      },
    );
  }
}
