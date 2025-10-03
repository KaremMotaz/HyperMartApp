import 'package:dio/dio.dart';
import '../../features/auth/data/models/resend_otp_request_body.dart';
import '../../features/auth/data/models/user_data_response.dart';
import '../../features/auth/data/models/validate_otp_request_body.dart';
import '../helpers/backend_endpoint.dart';
import '../../features/auth/data/models/change_password_request_body.dart';
import '../../features/auth/data/models/forgot_password_request_body.dart';
import '../../features/auth/data/models/login_request_body.dart';
import '../../features/auth/data/models/login_response.dart';
import '../../features/auth/data/models/refresh_token_request_body.dart';
import '../../features/auth/data/models/refresh_token_response.dart';
import '../../features/auth/data/models/register_request_body.dart';
import '../../features/auth/data/models/reset_password_request_body.dart';
import '../../features/auth/data/models/verify_email_request_body.dart';
import 'package:retrofit/retrofit.dart';
part 'auth_datasource.g.dart';

@RestApi(baseUrl: BackendEndpoint.baseUrl)
abstract class AuthDatasource {
  factory AuthDatasource(Dio dio) = _AuthDatasource;

  @POST(BackendEndpoint.login)
  Future<LoginResponse> login({@Body() required LoginRequestBody body});

  @POST(BackendEndpoint.register)
  Future<void> register({@Body() required RegisterRequestBody body});

  @POST(BackendEndpoint.refreshToken)
  Future<RefreshTokenResponse> refreshToken({
    @Body() required RefreshTokenRequestBody body,
  });

  @POST(BackendEndpoint.verifyEmail)
  Future<void> verifyEmail({@Body() required VerifyEmailRequestBody body});

  @POST(BackendEndpoint.changePassword)
  Future<void> changePassword({
    @Body() required ChangePasswordRequestBody body,
  });

  @POST(BackendEndpoint.forgotPassword)
  Future<void> forgotPassword({
    @Body() required ForgotPasswordRequestBody body,
  });

  @POST(BackendEndpoint.validateOtp)
  Future<void> validateOtp({@Body() required ValidateOTPRequestBody body});

  @POST(BackendEndpoint.resendOtp)
  Future<void> resendOtp({@Body() required ResendOtpRequestBody body});

  @POST(BackendEndpoint.resetPassword)
  Future<void> resetPassword({@Body() required ResetPasswordRequestBody body});

  @GET(BackendEndpoint.getUserData)
  Future<UserDataResponse> getUserData();

  @POST(BackendEndpoint.logout)
  Future<void> logout();
}
