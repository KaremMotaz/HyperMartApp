import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/auth/data/repos/auth_repo.dart';
import '../../features/home/data/models/categories/get_categories_response.dart';
import '../../features/home/data/repo/categories_repo.dart';
import '../../features/home/data/local_data_source/categories_local_data_source.dart';
import '../../features/home/data/services/home_service.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';
import 'local_cache_service.dart';

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

  // Categories
  getIt.registerLazySingleton<HomeService>(() => HomeService(getIt<Dio>()));
  getIt.registerLazySingleton<LocalCacheService<GetCategoriesResponse>>(
    () => LocalCacheService<GetCategoriesResponse>(),
  );
  getIt.registerLazySingleton<CategoriesLocalDataSource>(
    () => CategoriesLocalDataSource(
      cache: getIt<LocalCacheService<GetCategoriesResponse>>(),
    ),
  );
  getIt.registerLazySingleton<CategoriesRepo>(
    () => CategoriesRepo(
      categoriesService: getIt<HomeService>(),
      categoriesLocalDataSource: getIt<CategoriesLocalDataSource>(),
    ),
  );
}
