import 'package:dio/dio.dart';
import 'package:hyper_mart_app/core/helpers/backend_endpoint.dart';
import 'package:hyper_mart_app/features/auth/data/models/login_request_body.dart';
import 'package:hyper_mart_app/features/auth/data/models/login_response.dart';
import 'package:retrofit/retrofit.dart';
part 'auth_service.g.dart';

@RestApi(baseUrl: BackendEndpoint.baseUrl)
abstract class AuthService {
  factory AuthService(Dio dio) = _AuthService;

  @POST(BackendEndpoint.login)
  Future<LoginResponse> login({@Body() required LoginRequestBody body});
}
