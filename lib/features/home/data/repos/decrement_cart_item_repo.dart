import 'package:hyper_mart_app/features/home/data/local_data_source/cart_items_local_data_source.dart';
import '../models/cart/decrement_cart_item_request_body.dart';
import '../models/cart/decrement_cart_item_response.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../services/home_service.dart';

class DecrementCartItemRepo {
  final HomeService homeService;
  final CartItemsLocalDataSource cartItemsLocalDataSource;

  DecrementCartItemRepo({
    required this.homeService,
    required this.cartItemsLocalDataSource,
  });

  Future<ApiResult<DecrementCartItemResponse>> decrementCartItem({
    required DecrementCartItemRequestBody body,
  }) async {
    try {
      final DecrementCartItemResponse response = await homeService
          .decrementCartItem(body: body);
      await cartItemsLocalDataSource.clearAllkCartItems();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
