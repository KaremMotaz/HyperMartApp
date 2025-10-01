import 'package:dio/dio.dart';
import 'package:hyper_mart_app/core/helpers/constants.dart';
import 'package:hyper_mart_app/core/services/cache_helper.dart';
import 'package:hyper_mart_app/features/auth/data/models/refresh_token_request_body.dart';
import 'package:hyper_mart_app/features/auth/domain/auth_repo.dart';

class TokenRefresher {
  final AuthRepo authRepo;
  final Dio dio;

  TokenRefresher({required this.authRepo, required this.dio});

  Future<Response?> tryRefreshAndRetry(DioException err) async {
    final refreshToken = await CacheHelper.getSecureData(key: kRefreshToken);
    if (refreshToken == null) return null;

    final result = await authRepo.refreshToken(
      body: RefreshTokenRequestBody(refreshToken: refreshToken),
    );

    return await result.fold((_) => null, (refreshResponse) async {
      final newAccessToken = refreshResponse.accessToken;
      err.requestOptions.headers["Authorization"] = "Bearer $newAccessToken";
      return dio.fetch(err.requestOptions);
    });
  }
}
