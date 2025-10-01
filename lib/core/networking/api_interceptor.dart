import 'package:dio/dio.dart';
import 'package:hyper_mart_app/core/helpers/constants.dart';
import 'package:hyper_mart_app/core/networking/token_refresher.dart';
import 'package:hyper_mart_app/core/services/cache_helper.dart';
import 'package:hyper_mart_app/core/services/get_it_service.dart';
import 'package:hyper_mart_app/features/auth/domain/auth_repo.dart';

class ApiInterceptor extends InterceptorsWrapper {
  final Dio dio;
  final AuthRepo authRepo = getIt.get<AuthRepo>();
  final TokenRefresher tokenRefresher = getIt.get<TokenRefresher>();

  ApiInterceptor({required this.dio});

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await CacheHelper.getSecureData(key: kAccessToken);
    if (token != null) {
      options.headers["Authorization"] = "Bearer $token";
    }
    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      final response = await tokenRefresher.tryRefreshAndRetry(err);

      if (response != null) {
        return handler.resolve(response);
      }

      return handler.reject(err);
    }
    return handler.next(err);
  }
}
