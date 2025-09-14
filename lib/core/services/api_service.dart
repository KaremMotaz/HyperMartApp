import 'package:dartz/dartz.dart';
import 'package:hyper_mart_app/core/errors/failure.dart';
import 'package:hyper_mart_app/features/auth/domain/auth_repo.dart';
import 'package:hyper_mart_app/features/auth/domain/user_entity.dart';

class ApiService implements AuthRepo {
  @override
  Future<Either<Failure, UserEntity>> addUserData({
    required UserEntity userEntity,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, bool>> checkIfDataExists({
    required String documentId,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<UserEntity> getUserData({required String uid}) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> logOut() {
    throw UnimplementedError();
  }

  @override
  Future saveUserData({required UserEntity userEntity}) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithEmailAndPassword({
    required String email,
    required String password,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserEntity>> signupWithEmailAndPassword({
    required String email,
    required String password,
  }) {
    throw UnimplementedError();
  }
}
