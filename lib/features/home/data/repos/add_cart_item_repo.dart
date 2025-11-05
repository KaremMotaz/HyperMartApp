import '../models/cart/add_cart_item_request_body.dart';
import '../models/cart/add_cart_item_response.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../services/home_service.dart';

class AddCartItemRepo {
  final HomeService homeService;

  AddCartItemRepo({required this.homeService});

  Future<ApiResult<AddCartItemResponse>> addCartItem({
    required AddCartItemRequestBody body,
  }) async {
    try {
      final AddCartItemResponse response = await homeService.addCartItem(
        body: body,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
