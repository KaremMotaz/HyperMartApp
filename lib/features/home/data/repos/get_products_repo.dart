import '../models/Products/get_products_request_body.dart';
import '../models/Products/get_products_response.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../services/home_service.dart';

class GetProductsRepo {
  final HomeService homeService;

  GetProductsRepo({required this.homeService});

  Future<ApiResult<GetProductsResponse>> getProducts() async {
    try {
      final GetProductsResponse response = await homeService.getProducts(
        body: GetProductsRequestBody(page: 1, pageSize: 10),
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
