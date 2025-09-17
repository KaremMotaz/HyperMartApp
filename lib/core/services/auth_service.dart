import 'package:dio/dio.dart';
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
part 'auth_service.g.dart';

@RestApi(baseUrl: BackendEndpoint.baseUrl)
abstract class AuthService {
  factory AuthService(Dio dio) = _AuthService;

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

  @POST(BackendEndpoint.resetPassword)
  Future<void> resetPassword({@Body() required ResetPasswordRequestBody body});

  @POST(BackendEndpoint.logout)
  Future<void> logout();
}
