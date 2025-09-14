import 'package:get_it/get_it.dart';
import '../../features/auth/data/repos/auth_repo_imp.dart';
import '../../features/auth/domain/auth_repo.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  // 🔐 Auth
  getIt.registerLazySingleton<AuthRepo>(() => AuthRepoImp());
}
