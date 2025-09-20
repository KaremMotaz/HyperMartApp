import 'package:dartz/dartz.dart';

import '../../../core/errors/failure.dart';
import '../data/models/change_password_request_body.dart';
import '../data/models/forgot_password_request_body.dart';
import '../data/models/login_request_body.dart';
import '../data/models/login_response.dart';
import '../data/models/refresh_token_request_body.dart';
import '../data/models/refresh_token_response.dart';
import '../data/models/register_request_body.dart';
import '../data/models/resend_otp_request_body.dart';
import '../data/models/reset_password_request_body.dart';
import '../data/models/user_data.dart';
import '../data/models/validate_otp_request_body.dart';
import '../data/models/verify_email_request_body.dart';

abstract class AuthRepo {
  Future<Either<Failure, LoginResponse>> loginWithEmailAndPassword({
    required LoginRequestBody body,
  });
  Future<Either<Failure, Unit>> registerWithEmailAndPassword({
    required RegisterRequestBody body,
  });
  Future<Either<Failure, Unit>> verifyEmail({
    required VerifyEmailRequestBody body,
  });

  Future<Either<Failure, RefreshTokenResponse>> refreshToken({
    required RefreshTokenRequestBody body,
  });

  Future<Either<Failure, Unit>> changePassword({
    required ChangePasswordRequestBody body,
  });
  Future<Either<Failure, Unit>> forgotPassword({
    required ForgotPasswordRequestBody body,
  });
  Future<Either<Failure, Unit>> resetPassword({
    required ResetPasswordRequestBody body,
  });
  Future<Either<Failure, Unit>> resendOtp({required ResendOtpRequestBody body});
  Future<Either<Failure, Unit>> validateOtp({
    required ValidateOTPRequestBody body,
  });

  Future<Either<Failure, Unit>> logOut();
  Future<Either<Failure, UserData>> getUserData();
}
