import 'package:hyper_mart_app/features/home/data/models/cart/decrement_cart_item_request_body.dart';
import 'package:hyper_mart_app/features/home/data/models/cart/decrement_cart_item_response.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../services/home_service.dart';

class DecrementCartItemRepo {
  final HomeService homeService;

  DecrementCartItemRepo({required this.homeService});

  Future<ApiResult<DecrementCartItemResponse>> addCartItem({
    required DecrementCartItemRequestBody body,
  }) async {
    try {
      final DecrementCartItemResponse response = await homeService
          .decrementCartItem(body: body);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
