import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_mart_app/features/categories/data/categories_datasource.dart';
import 'package:hyper_mart_app/features/categories/data/categories_repo.dart';
import 'package:hyper_mart_app/features/categories/data/categories_repo_imp.dart';
import '../networking/dio_client.dart';
import '../../features/auth/data/repos/auth_repo_imp.dart';
import '../../features/auth/domain/auth_repo.dart';
import 'auth_datasource.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // DioClient
  getIt.registerLazySingleton<DioClient>(() => DioClient());

  // Dio (لو محتاجينه مباشرة)
  getIt.registerLazySingleton<Dio>(() => getIt<DioClient>().dio);

  // AuthService (Retrofit generated)
  getIt.registerLazySingleton<AuthDatasource>(
    () => AuthDatasource(getIt<Dio>()),
  );

  // AuthRepo
  getIt.registerLazySingleton<AuthRepo>(
    () => AuthRepoImp(authDatasource: getIt<AuthDatasource>()),
  );

  getIt.registerLazySingleton<CategoriesDatasource>(
    () => CategoriesDatasource(getIt<Dio>()),
  );

  getIt.registerLazySingleton<CategoriesRepo>(
    () =>
        CategoriesRepoImp(categoriesDatasource: getIt<CategoriesDatasource>()),
  );
}
