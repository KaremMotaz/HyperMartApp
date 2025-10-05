import 'package:dio/dio.dart';

import '../errors/auth_failure.dart';
import '../errors/failure.dart';
import 'api_error_model.dart';

class ApiErrorHandler {
  static Failure handleDioError({required DioException e}) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return AuthFailure(message: "Connection timeout. Please try again.");

      case DioExceptionType.connectionError:
        return AuthFailure(
          message: "No Internet connection or server unreachable.",
        );

      case DioExceptionType.badResponse:
        return ApiErrorModel.fromJson(
          json: e.response?.data ?? {},
          statusCode: e.response?.statusCode,
        );

      case DioExceptionType.cancel:
        return AuthFailure(message: "Request was cancelled.");

      case DioExceptionType.unknown:
      default:
        return AuthFailure(message: "Something went wrong. Please try again.");
    }
  }
}
