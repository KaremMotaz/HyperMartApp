import 'package:hyper_mart_app/features/categories/data/models/get_categories_response.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/services/local_cache_service.dart';

class CategoriesLocalDataSource {
  final LocalCacheService<GetCategoriesResponse> cache;

  CategoriesLocalDataSource({required this.cache});

  Future<GetCategoriesResponse?> getAllCategories() async {
    try {
      final GetCategoriesResponse? data = await cache.getData(
        key: kCategories,
        boxName: kCashedDataBox,
      );
      return data;
    } catch (e) {
      await clearAllCategories();
      return null;
    }
  }

  Future<void> cacheAllCategories({required GetCategoriesResponse data}) async {
    await cache.saveData(key: kCategories, boxName: kCashedDataBox, data: data);
  }

  Future<void> clearAllCategories() async {
    await cache.clear(key: kCategories, boxName: kCashedDataBox);
  }
}
