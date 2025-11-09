import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
import '../../../../core/helpers/constants.dart';
import '../../../../core/services/local_cache_service.dart';

class FavouriteProductsLocalDataSource {
  final LocalCacheService<ProductModel> cache;

  FavouriteProductsLocalDataSource({required this.cache});

  Future<List<ProductModel>?> getAllFavouriteProducts() async {
    final List<ProductModel> data = cache.getBoxValues(
      boxName: kFavouriteProductsBox,
    );
    return data;
  }

  Future<bool> isFavouriteProduct({required String productId}) async {
    return cache.isContains(boxName: kFavouriteProductsBox, key: productId);
  }

  Future<void> addToFavouriteProducts({required ProductModel data}) async {
    await cache.saveData(
      key: data.id,
      boxName: kFavouriteProductsBox,
      data: data,
    );
  }

  Future<void> removeFromFavouriteProducts({required String productId}) async {
    await cache.clear(key: productId, boxName: kFavouriteProductsBox);
  }

  Future<void> removeAllFavouriteProducts() async {
    await cache.clearAll(boxName: kFavouriteProductsBox);
  }
}
