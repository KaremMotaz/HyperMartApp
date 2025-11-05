import '../models/cart/get_cart_items_response.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../services/home_service.dart';

class GetCartItemsRepo {
  final HomeService homeService;

  GetCartItemsRepo({required this.homeService});

  Future<ApiResult<GetCartItemsResponse>> getCartItems() async {
    try {
      final GetCartItemsResponse response = await homeService.getCartItems();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
