import 'package:dartz/dartz.dart';
import 'package:hyper_mart_app/features/auth/data/models/login_request_body.dart';
import 'package:hyper_mart_app/features/auth/data/models/login_response.dart';
import 'package:hyper_mart_app/features/auth/data/models/register_request_body.dart';
import '../../../core/errors/failure.dart';

abstract class AuthRepo {
  Future<Either<Failure, LoginResponse>> loginWithEmailAndPassword({
    required LoginRequestBody body,
  });
  Future<Either<Failure, Unit>> registerWithEmailAndPassword({
    required RegisterRequestBody body,
  });

  Future<Either<Failure, Unit>> logOut();
  // Future<Either<Failure, UserEntity>> addUserData({
  //   required UserEntity userEntity,
  // });
  // Future saveUserData({required UserEntity userEntity});
  // Future<UserEntity> getUserData({required String uid});
  // Future<Either<Failure, bool>> checkIfDataExists({required String documentId});
}
