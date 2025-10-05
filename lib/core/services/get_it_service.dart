import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/auth/data/repos/auth_repo.dart';
import '../../features/categories/data/repos/categories_repo.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // DioClient
  getIt.registerLazySingleton<DioFactory>(() => DioFactory());

  // Dio (لو محتاجينه مباشرة)
  getIt.registerLazySingleton<Dio>(() => getIt<DioFactory>().dio);

  // AuthService (Retrofit generated)
  getIt.registerLazySingleton<ApiService>(() => ApiService(getIt<Dio>()));

  // AuthRepo
  getIt.registerLazySingleton<AuthRepo>(
    () => AuthRepo(apiService: getIt<ApiService>()),
  );

  getIt.registerLazySingleton<CategoriesRepo>(
    () => CategoriesRepo(apiService: getIt<ApiService>()),
  );
}
