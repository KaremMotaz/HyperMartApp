import 'package:hyper_mart_app/features/home/data/models/cart/delete_cart_item_request_body.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../services/home_service.dart';

class DeleteCartItemRepo {
  final HomeService homeService;

  DeleteCartItemRepo({required this.homeService});

  Future<ApiResult<void>> deleteCartItem({
    required DeleteCartItemRequestBody body,
  }) async {
    try {
      await homeService.deleteCartItem(id: body.id, body: body);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
