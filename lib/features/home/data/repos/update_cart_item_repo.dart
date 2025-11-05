import 'package:hyper_mart_app/features/home/data/local_data_source/cart_items_local_data_source.dart';

import '../models/cart/update_cart_item_request_body.dart';
import '../models/cart/update_cart_item_response.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../services/home_service.dart';

class UpdateCartItemRepo {
  final HomeService homeService;
  final CartItemsLocalDataSource cartItemsLocalDataSource;

  UpdateCartItemRepo({
    required this.homeService,
    required this.cartItemsLocalDataSource,
  });

  Future<ApiResult<UpdateCartItemResponse>> updateCartItem({
    required UpdateCartItemRequestBody body,
  }) async {
    try {
      final UpdateCartItemResponse response = await homeService.updateCartItem(
        id: body.id,
        body: body,
      );
      await cartItemsLocalDataSource.clearAllkCartItems();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
