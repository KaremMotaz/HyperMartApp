import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../networking/dio_client.dart';
import '../../features/auth/data/repos/auth_repo_imp.dart';
import '../../features/auth/domain/auth_repo.dart';
import 'auth_service.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // DioClient
  getIt.registerLazySingleton<DioClient>(() => DioClient());

  // Dio (لو محتاجينه مباشرة)
  getIt.registerLazySingleton<Dio>(() => getIt<DioClient>().dio);

  // AuthService (Retrofit generated)
  getIt.registerLazySingleton<AuthService>(() => AuthService(getIt<Dio>()));

  // AuthRepo
  getIt.registerLazySingleton<AuthRepo>(
    () => AuthRepoImp(authService: getIt<AuthService>()),
  );
}
