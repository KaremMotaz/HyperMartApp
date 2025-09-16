import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_mart_app/core/networking/dio_factory.dart';
import 'package:hyper_mart_app/core/services/auth_service.dart';
import '../../features/auth/data/repos/auth_repo_imp.dart';
import '../../features/auth/domain/auth_repo.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  // 🔐 Auth
  getIt.registerLazySingleton<Dio>(() => DioFactory().dio);
  getIt.registerLazySingleton<AuthService>(() => AuthService(getIt()));
  getIt.registerLazySingleton<AuthRepo>(
    () => AuthRepoImp(authService: getIt()),
  );
}
