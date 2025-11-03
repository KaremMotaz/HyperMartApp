import 'package:hyper_mart_app/features/home/data/local_data_source/cart_items_local_data_source.dart';
import 'package:hyper_mart_app/features/home/data/models/cart/get_cart_items_response.dart';
import '../../../../core/helpers/logger.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../services/home_service.dart';

class GetCartItemsRepo {
  final HomeService homeService;
  final CartItemsLocalDataSource cartItemsLocalDataSource;

  GetCartItemsRepo({
    required this.homeService,
    required this.cartItemsLocalDataSource,
  });

  Future<ApiResult<GetCartItemsResponse>> getCartItems() async {
    try {
      // Try to get data from cache first
      final GetCartItemsResponse? cached = await cartItemsLocalDataSource
          .getCartItems();
      Logger.log(cached?.cartItems.toString() ?? [].toString());

      if (cached != null) {
        return ApiResult.success(cached);
      }

      // No data in cache, fetch from remote
      final GetCartItemsResponse response = await homeService.getCartItems();
      Logger.log(response.cartItems.toString());

      // Cache the data
      await cartItemsLocalDataSource.cacheCartItems(data: response);

      return ApiResult.success(response);
    } catch (error) {
      Logger.log(error.toString());
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
