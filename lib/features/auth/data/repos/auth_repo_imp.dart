import 'package:dartz/dartz.dart';
import 'package:hyper_mart_app/core/errors/auth_failure.dart';
import 'package:hyper_mart_app/core/errors/failure.dart';
import 'package:hyper_mart_app/core/services/auth_service.dart';
import 'package:hyper_mart_app/features/auth/data/models/login_request_body.dart';
import 'package:hyper_mart_app/features/auth/data/models/login_response.dart';
import 'package:hyper_mart_app/features/auth/domain/auth_repo.dart';
import 'package:hyper_mart_app/features/auth/domain/user_entity.dart';

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
    } catch (e) {
      return left(AuthFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signupWithEmailAndPassword({
    required String email,
    required String password,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> logOut() {
    throw UnimplementedError();
  }
}
