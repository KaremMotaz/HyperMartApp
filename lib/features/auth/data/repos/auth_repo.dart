import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../models/resend_otp_request_body.dart';
import '../models/user_data_response.dart';
import '../models/validate_otp_request_body.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/helpers/constants.dart';
import '../../../../core/networking/api_service.dart';
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

class AuthRepo {
  final ApiService apiService;

  AuthRepo({required this.apiService});

  Future<Either<Failure, LoginResponse>> loginWithEmailAndPassword({
    required LoginRequestBody body,
  }) async {
    try {
      final LoginResponse response = await apiService.login(body: body);
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
      return left(ApiErrorHandler.handleDioError(e: e));
    }
  }

  Future<Either<Failure, Unit>> registerWithEmailAndPassword({
    required RegisterRequestBody body,
  }) async {
    try {
      await apiService.register(body: body);
      return right(unit);
    } on DioException catch (e) {
      return left(ApiErrorHandler.handleDioError(e: e));
    }
  }

  Future<Either<Failure, Unit>> verifyEmail({
    required VerifyEmailRequestBody body,
  }) async {
    try {
      await apiService.verifyEmail(body: body);
      return right(unit);
    } on DioException catch (e) {
      return left(ApiErrorHandler.handleDioError(e: e));
    }
  }

  Future<Either<Failure, Unit>> logOut() async {
    try {
      await apiService.logout();
      await CacheHelper.set(key: kRememberMe, value: false);
      await CacheHelper.setSecureData(key: kAccessToken, value: "");
      return right(unit);
    } on DioException catch (e) {
      return left(ApiErrorHandler.handleDioError(e: e));
    }
  }

  Future<Either<Failure, Unit>> changePassword({
    required ChangePasswordRequestBody body,
  }) async {
    try {
      await apiService.changePassword(body: body);
      return right(unit);
    } on DioException catch (e) {
      return left(ApiErrorHandler.handleDioError(e: e));
    }
  }

  Future<Either<Failure, Unit>> forgotPassword({
    required ForgotPasswordRequestBody body,
  }) async {
    try {
      await apiService.forgotPassword(body: body);
      return right(unit);
    } on DioException catch (e) {
      return left(ApiErrorHandler.handleDioError(e: e));
    }
  }

  Future<Either<Failure, Unit>> resetPassword({
    required ResetPasswordRequestBody body,
  }) async {
    try {
      await apiService.resetPassword(body: body);
      return right(unit);
    } on DioException catch (e) {
      return left(ApiErrorHandler.handleDioError(e: e));
    }
  }

  Future<Either<Failure, RefreshTokenResponse>> refreshToken({
    required RefreshTokenRequestBody body,
  }) async {
    try {
      final RefreshTokenResponse response = await apiService.refreshToken(
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
      return left(ApiErrorHandler.handleDioError(e: e));
    }
  }

  Future<Either<Failure, Unit>> resendOtp({
    required ResendOtpRequestBody body,
  }) async {
    try {
      await apiService.resendOtp(body: body);
      return right(unit);
    } on DioException catch (e) {
      return left(ApiErrorHandler.handleDioError(e: e));
    }
  }

  Future<Either<Failure, Unit>> validateOtp({
    required ValidateOTPRequestBody body,
  }) async {
    try {
      await apiService.validateOtp(body: body);
      return right(unit);
    } on DioException catch (e) {
      return left(ApiErrorHandler.handleDioError(e: e));
    }
  }

  Future<Either<Failure, UserDataResponse>> getUserData() async {
    try {
      final UserDataResponse response = await apiService.getUserData();
      return right(response);
    } on DioException catch (e) {
      return left(ApiErrorHandler.handleDioError(e: e));
    }
  }
}
