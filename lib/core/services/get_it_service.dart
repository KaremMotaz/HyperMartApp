import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_mart_app/core/services/local_cache_service.dart';
import 'package:hyper_mart_app/features/categories/data/models/get_categories_response.dart';
import 'package:hyper_mart_app/features/categories/data/services/categories_local_data_source.dart';
import 'package:hyper_mart_app/features/categories/data/services/categories_service.dart';

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

  // Categories
  getIt.registerLazySingleton<CategoriesService>(
    () => CategoriesService(getIt<Dio>()),
  );
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
      categoriesService: getIt<CategoriesService>(),
      categoriesLocalDataSource: getIt<CategoriesLocalDataSource>(),
    ),
  );
}
