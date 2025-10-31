import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/auth/data/models/change_password_request_body.dart';
import '../../features/auth/data/models/forgot_password_request_body.dart';
import '../../features/auth/data/models/login_request_body.dart';
import '../../features/auth/data/models/login_response.dart';
import '../../features/auth/data/models/refresh_token_request_body.dart';
import '../../features/auth/data/models/refresh_token_response.dart';
import '../../features/auth/data/models/register_request_body.dart';
import '../../features/auth/data/models/resend_otp_request_body.dart';
import '../../features/auth/data/models/reset_password_request_body.dart';
import '../../features/auth/data/models/user_data_response.dart';
import '../../features/auth/data/models/validate_otp_request_body.dart';
import '../../features/auth/data/models/verify_email_request_body.dart';
import 'api_constants.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login({@Body() required LoginRequestBody body});

  @POST(ApiConstants.register)
  Future<void> register({@Body() required RegisterRequestBody body});

  @POST(ApiConstants.refreshToken)
  Future<RefreshTokenResponse> refreshToken({
    @Body() required RefreshTokenRequestBody body,
  });

  @POST(ApiConstants.verifyEmail)
  Future<void> verifyEmail({@Body() required VerifyEmailRequestBody body});

  @POST(ApiConstants.changePassword)
  Future<void> changePassword({
    @Body() required ChangePasswordRequestBody body,
  });

  @POST(ApiConstants.forgotPassword)
  Future<void> forgotPassword({
    @Body() required ForgotPasswordRequestBody body,
  });

  @POST(ApiConstants.validateOtp)
  Future<void> validateOtp({@Body() required ValidateOTPRequestBody body});

  @POST(ApiConstants.resendOtp)
  Future<void> resendOtp({@Body() required ResendOtpRequestBody body});

  @POST(ApiConstants.resetPassword)
  Future<void> resetPassword({@Body() required ResetPasswordRequestBody body});

  @GET(ApiConstants.getUserData)
  Future<UserDataResponse> getUserData();

  @POST(ApiConstants.logout)
  Future<void> logout();
}
