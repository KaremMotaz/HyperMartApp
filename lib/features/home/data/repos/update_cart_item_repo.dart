import 'package:hyper_mart_app/features/home/data/models/cart/update_cart_item_request_body.dart';
import 'package:hyper_mart_app/features/home/data/models/cart/update_cart_item_response.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../services/home_service.dart';

class UpdateCartItemRepo {
  final HomeService homeService;

  UpdateCartItemRepo({required this.homeService});

  Future<ApiResult<UpdateCartItemResponse>> addCartItem({
    required UpdateCartItemRequestBody body,
  }) async {
    try {
      final UpdateCartItemResponse response = await homeService.updateCartItem(
        id: body.id,
        body: body,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
