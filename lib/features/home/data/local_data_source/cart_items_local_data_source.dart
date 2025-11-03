import 'package:hyper_mart_app/features/home/data/models/cart/get_cart_items_response.dart';
import '../../../../core/helpers/constants.dart';
import '../../../../core/services/local_cache_service.dart';

class CartItemsLocalDataSource {
  final LocalCacheService<GetCartItemsResponse> cache;

  CartItemsLocalDataSource({required this.cache});

  Future<GetCartItemsResponse?> getCartItems() async {
    try {
      final GetCartItemsResponse? data = await cache.getData(
        key: kCartItems,
        boxName: kCashedDataBox,
      );
      return data;
    } catch (e) {
      await clearAllkCartItems();
      return null;
    }
  }

  Future<void> cacheCartItems({required GetCartItemsResponse data}) async {
    await cache.saveData(key: kCartItems, boxName: kCashedDataBox, data: data);
  }

  Future<void> clearAllkCartItems() async {
    await cache.clear(key: kCartItems, boxName: kCashedDataBox);
  }
}
