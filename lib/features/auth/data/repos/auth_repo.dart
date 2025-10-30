import '../../../../core/helpers/constants.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../../../../core/services/cache_helper.dart';
import '../models/change_password_request_body.dart';
import '../models/forgot_password_request_body.dart';
import '../models/login_request_body.dart';
import '../models/login_response.dart';
import '../models/refresh_token_request_body.dart';
import '../models/refresh_token_response.dart';
import '../models/register_request_body.dart';
import '../models/resend_otp_request_body.dart';
import '../models/reset_password_request_body.dart';
import '../models/user_data_response.dart';
import '../models/validate_otp_request_body.dart';
import '../models/verify_email_request_body.dart';

class AuthRepo {
  final ApiService apiService;

  AuthRepo({required this.apiService});

  Future<ApiResult<LoginResponse>> loginWithEmailAndPassword({
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
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<void>> registerWithEmailAndPassword({
    required RegisterRequestBody body,
  }) async {
    try {
      await apiService.register(body: body);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<void>> verifyEmail({
    required VerifyEmailRequestBody body,
  }) async {
    try {
      await apiService.verifyEmail(body: body);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<void>> logOut() async {
    try {
      await apiService.logout();
      await CacheHelper.set(key: kRememberMe, value: false);
      await CacheHelper.setSecureData(key: kAccessToken, value: "");
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<void>> changePassword({
    required ChangePasswordRequestBody body,
  }) async {
    try {
      await apiService.changePassword(body: body);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<void>> forgotPassword({
    required ForgotPasswordRequestBody body,
  }) async {
    try {
      await apiService.forgotPassword(body: body);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<void>> resetPassword({
    required ResetPasswordRequestBody body,
  }) async {
    try {
      await apiService.resetPassword(body: body);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<RefreshTokenResponse>> refreshToken({
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
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<void>> resendOtp({
    required ResendOtpRequestBody body,
  }) async {
    try {
      await apiService.resendOtp(body: body);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<void>> validateOtp({
    required ValidateOTPRequestBody body,
  }) async {
    try {
      await apiService.validateOtp(body: body);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<UserDataResponse>> getUserData() async {
    try {
      final UserDataResponse response = await apiService.getUserData();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
