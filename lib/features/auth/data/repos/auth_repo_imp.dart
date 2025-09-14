// import 'dart:convert';
// import 'package:hyper_mart_app/core/services/api_service.dart';
// import 'package:dartz/dartz.dart';
// import '../../../../core/errors/auth_failure.dart';
// import '../../../../core/errors/failure.dart';
// import '../../../../core/helpers/backend_endpoint.dart';
// import '../../../../core/helpers/constants.dart';
// import '../../../../core/services/cache_helper.dart';
// import '../../../../core/services/data_service.dart';
// import '../../domain/auth_repo.dart';
// import '../../domain/user_entity.dart';
// import '../models/user_model.dart';

// class AuthRepoImp extends AuthRepo {
//   final DatabaseService databaseService;
//   final ApiService apiService = ApiService();

//   AuthRepoImp({
//     required this.databaseService,
//   });
//   @override
//   Future<Either<Failure, UserEntity>> signupWithEmailAndPassword({
//     required String email,
//     required String password,
//   }) async {
//     try {
//       final Either<Failure, User> result = await apiService
//           .signupWithEmailAndPassword(email: email, password: password);

//       return await result.fold(
//         (failure) async {
//           return left(failure);
//         },
//         (user) async {
//           final userEntity = UserEntity(email: email, uid: user.uid);
//           await addUserData(userEntity: userEntity);
//           return right(userEntity);
//         },
//       );
//     } catch (e) {
//       return left(AuthFailure(message: e.toString()));
//     }
//   }

//   @override
//   Future<Either<Failure, UserEntity>> signinWithEmailAndPassword({
//     required String email,
//     required String password,
//   }) async {
//     try {
//       final Either<Failure, User> result = await apiService
//           .signinWithEmailAndPassword(email: email, password: password);

//       return await result.fold(
//         (failure) async {
//           return left(failure);
//         },
//         (user) async {
//           final userEntity = await getUserData(uid: user.uid);
//           await saveUserData(userEntity: userEntity);
//           return right(userEntity);
//         },
//       );
//     } catch (e) {
//       return left(AuthFailure(message: e.toString()));
//     }
//   }

//   @override
//   Future<Either<Failure, Unit>> logOut() async {
//     try {
//       await apiService.logOut();
//       return right(unit);
//     } catch (e) {
//       return left(AuthFailure(message: "Logged out unexpectedly"));
//     }
//   }

//   @override
//   Future<Either<Failure, UserEntity>> addUserData({
//     required UserEntity userEntity,
//   }) async {
//     await databaseService.addData(
//       path: BackendEndpoint.addUserData,
//       data: UserModel.fromEntity(userEntity).toFirestoreMap(),
//       documentId: userEntity.uid,
//     );
//     return right(userEntity);
//   }

//   @override
//   Future<UserEntity> getUserData({required String uid}) async {
//     final Map<String, dynamic> userData = await databaseService.getData(
//       path: '${BackendEndpoint.getUserData}/$uid',
//     );
//     return UserModel.fromJson(userData);
//   }

//   @override
//   Future saveUserData({required UserEntity userEntity}) async {
//     String jsonData = jsonEncode(UserModel.fromEntity(userEntity).toJson());
//     await CacheHelper.set(key: kUserData, value: jsonData);
//   }

//   @override
//   Future<Either<Failure, bool>> checkIfDataExists({
//     required String documentId,
//   }) async {
//     try {
//       bool isDataExists = await databaseService.checkIfDataExists(
//         path: '${BackendEndpoint.checkIfDataExists}/$documentId',
//       );
//       return right(isDataExists);
//     } catch (e) {
//       return left(AuthFailure(message: e.toString()));
//     }
//   }
// }

import 'package:dartz/dartz.dart';
import 'package:hyper_mart_app/core/errors/failure.dart';
import 'package:hyper_mart_app/features/auth/domain/auth_repo.dart';
import 'package:hyper_mart_app/features/auth/domain/user_entity.dart';

class AuthRepoImp extends AuthRepo {
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
