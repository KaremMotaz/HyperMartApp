import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/errors/error_handler.dart';
import '../models/resend_otp_request_body.dart';
import '../models/user_data_response.dart';
import '../models/validate_otp_request_body.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/helpers/constants.dart';
import '../../../../core/services/auth_datasource.dart';
import '../../../../core/services/cache_helper.dart';
import '../models/change_password_request_body.dart';
import '../models/forgot_password_request_body.dart';
import '../models/login_request_body.dart';
import '../models/login_response.dart';
import '../models/refresh_token_request_body.dart';
import '../models/refresh_token_response.dart';
import '../models/register_request_body.dart';
import '../models/reset_password_request_body.dart';
import '../models/verify_email_request_body.dart';
import '../../domain/auth_repo.dart';

class AuthRepoImp extends AuthRepo {
  final AuthDatasource authDatasource;

  AuthRepoImp({required this.authDatasource});

  @override
  Future<Either<Failure, LoginResponse>> loginWithEmailAndPassword({
    required LoginRequestBody body,
  }) async {
    try {
      final LoginResponse response = await authDatasource.login(body: body);
      await CacheHelper.setSecureData(
        key: kAccessToken,
        value: response.accessToken ?? "",
      );
      await CacheHelper.setSecureData(
        key: kRefreshToken,
        value: response.refreshToken ?? "",
      );
      return right(response);
    } on DioException catch (e) {
      return left(ErrorHandler.handleDioError(e: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> registerWithEmailAndPassword({
    required RegisterRequestBody body,
  }) async {
    try {
      await authDatasource.register(body: body);
      return right(unit);
    } on DioException catch (e) {
      return left(ErrorHandler.handleDioError(e: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> verifyEmail({
    required VerifyEmailRequestBody body,
  }) async {
    try {
      await authDatasource.verifyEmail(body: body);
      return right(unit);
    } on DioException catch (e) {
      return left(ErrorHandler.handleDioError(e: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> logOut() async {
    try {
      await authDatasource.logout();
      await CacheHelper.set(key: kRememberMe, value: false);
      await CacheHelper.setSecureData(key: kAccessToken, value: "");
      return right(unit);
    } on DioException catch (e) {
      return left(ErrorHandler.handleDioError(e: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> changePassword({
    required ChangePasswordRequestBody body,
  }) async {
    try {
      await authDatasource.changePassword(body: body);
      return right(unit);
    } on DioException catch (e) {
      return left(ErrorHandler.handleDioError(e: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> forgotPassword({
    required ForgotPasswordRequestBody body,
  }) async {
    try {
      await authDatasource.forgotPassword(body: body);
      return right(unit);
    } on DioException catch (e) {
      return left(ErrorHandler.handleDioError(e: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> resetPassword({
    required ResetPasswordRequestBody body,
  }) async {
    try {
      await authDatasource.resetPassword(body: body);
      return right(unit);
    } on DioException catch (e) {
      return left(ErrorHandler.handleDioError(e: e));
    }
  }

  @override
  Future<Either<Failure, RefreshTokenResponse>> refreshToken({
    required RefreshTokenRequestBody body,
  }) async {
    try {
      final RefreshTokenResponse response = await authDatasource.refreshToken(
        body: body,
      );
      await CacheHelper.setSecureData(
        key: kAccessToken,
        value: response.accessToken ?? "",
      );
      await CacheHelper.setSecureData(
        key: kRefreshToken,
        value: response.refreshToken ?? "",
      );
      return right(response);
    } on DioException catch (e) {
      return left(ErrorHandler.handleDioError(e: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> resendOtp({
    required ResendOtpRequestBody body,
  }) async {
    try {
      await authDatasource.resendOtp(body: body);
      return right(unit);
    } on DioException catch (e) {
      return left(ErrorHandler.handleDioError(e: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> validateOtp({
    required ValidateOTPRequestBody body,
  }) async {
    try {
      await authDatasource.validateOtp(body: body);
      return right(unit);
    } on DioException catch (e) {
      return left(ErrorHandler.handleDioError(e: e));
    }
  }

  @override
  Future<Either<Failure, UserDataResponse>> getUserData() async {
    try {
      final UserDataResponse response = await authDatasource.getUserData();
      return right(response);
    } on DioException catch (e) {
      return left(ErrorHandler.handleDioError(e: e));
    }
  }
}
