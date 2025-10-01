import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hyper_mart_app/core/helpers/backend_endpoint.dart';
import 'package:hyper_mart_app/core/helpers/constants.dart';
import 'package:hyper_mart_app/core/services/cache_helper.dart';
import 'package:hyper_mart_app/features/auth/data/models/refresh_token_request_body.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioClient {
  late final Dio dio;

  DioClient() {
    dio = Dio(
      BaseOptions(
        baseUrl: BackendEndpoint.baseUrl,
        connectTimeout: const Duration(minutes: 1),
        receiveTimeout: const Duration(minutes: 1),
        sendTimeout: const Duration(minutes: 5),
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await CacheHelper.getSecureData(key: kAccessToken);
          if (token != null) {
            options.headers["Authorization"] = "Bearer $token";
          }
          return handler.next(options);
        },
        onError: (error, handler) async {
          if (error.response?.statusCode == 401) {
            final bool refreshed = await _refreshAccessToken();

            if (refreshed) {
              final newToken = await CacheHelper.getSecureData(
                key: kAccessToken,
              );
              final requestOptions = error.requestOptions;
              requestOptions.headers["Authorization"] = "Bearer $newToken";

              final response = await dio.fetch(requestOptions);

              return handler.resolve(response);
            }
          }
          return handler.next(error);
        },
      ),
    );

    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: true,
        compact: true,
        maxWidth: 90,
        enabled: kDebugMode,
        filter: (options, args) {
          if (options.path.contains('/products')) {
            return false;
          }
          // don't print responses with unit8 list data
          return !args.isResponse || !args.hasUint8ListData;
        },
      ),
    );
  }

  Future<bool> _refreshAccessToken() async {
    final refreshToken = await CacheHelper.getSecureData(key: kRefreshToken);
    if (refreshToken == null) return false;
    try {
      final Response response = await Dio().post(
        BackendEndpoint.baseUrl + BackendEndpoint.refreshToken,
        data: RefreshTokenRequestBody(refreshToken: refreshToken).toJson(),
      );
      final newAccessToken = response.data["accessToken"];
      final newRefreshToken = response.data["refreshToken"];
      await CacheHelper.setSecureData(key: kAccessToken, value: newAccessToken);
      await CacheHelper.setSecureData(
        key: kRefreshToken,
        value: newRefreshToken,
      );
      return true;
    } catch (e) {
      return false;
    }
  }
}
