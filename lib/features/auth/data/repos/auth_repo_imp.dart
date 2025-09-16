import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hyper_mart_app/core/errors/auth_failure.dart';
import 'package:hyper_mart_app/core/errors/failure.dart';
import 'package:hyper_mart_app/core/networking/api_error_model.dart';
import 'package:hyper_mart_app/core/services/auth_service.dart';
import 'package:hyper_mart_app/features/auth/data/models/login_request_body.dart';
import 'package:hyper_mart_app/features/auth/data/models/login_response.dart';
import 'package:hyper_mart_app/features/auth/data/models/register_request_body.dart';
import 'package:hyper_mart_app/features/auth/domain/auth_repo.dart';

class AuthRepoImp extends AuthRepo {
  final AuthService authService;

  AuthRepoImp({required this.authService});

  @override
  Future<Either<Failure, LoginResponse>> loginWithEmailAndPassword({
    required LoginRequestBody body,
  }) async {
    try {
      final LoginResponse response = await authService.login(body: body);
      return right(response);
    } on DioException catch (e) {
      final apiError = ApiErrorModel.fromJson(e.response?.data ?? {});
      return left(
        AuthFailure(
          message: apiError.message ?? "Unexpected error",
          details: apiError.errors,
        ),
      );
    } catch (e) {
      return left(AuthFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> registerWithEmailAndPassword({
    required RegisterRequestBody body,
  }) async {
    try {
      await authService.register(body: body);
      return right(unit);
    } on DioException catch (e) {
      final apiError = ApiErrorModel.fromJson(e.response?.data ?? {});
      return left(
        AuthFailure(
          message: apiError.message ?? "Unexpected error",
          details: apiError.errors,
        ),
      );
    } catch (e) {
      return left(AuthFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> logOut() {
    throw UnimplementedError();
  }
}
