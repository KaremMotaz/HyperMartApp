import '../models/Products/get_products_response.dart';
import '../../../../core/helpers/constants.dart';
import '../../../../core/services/local_cache_service.dart';

class ProductsLocalDataSource {
  final LocalCacheService<GetProductsResponse> cache;

  ProductsLocalDataSource({required this.cache});

  Future<GetProductsResponse?> getAllProducts() async {
    try {
      final GetProductsResponse? data = await cache.getData(
        key: kProducts,
        boxName: kCashedDataBox,
      );
      return data;
    } catch (e) {
      await clearAllProducts();
      return null;
    }
  }

  Future<void> cacheAllProducts({required GetProductsResponse data}) async {
    await cache.saveData(key: kProducts, boxName: kCashedDataBox, data: data);
  }

  Future<void> clearAllProducts() async {
    await cache.clear(key: kProducts, boxName: kCashedDataBox);
  }
}
