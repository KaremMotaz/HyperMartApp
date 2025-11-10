import 'package:hyper_mart_app/features/home/data/models/Reviews/get_reviews_request_body.dart';
import 'package:hyper_mart_app/features/home/data/models/Reviews/get_reviews_response.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../services/home_service.dart';

class GetReviewsRepo {
  final HomeService homeService;

  GetReviewsRepo({required this.homeService});

  Future<ApiResult<GetReviewsResponse>> getReviews({
    required String productId,
  }) async {
    try {
      final GetReviewsResponse response = await homeService.getReviews(
        body: GetReviewsRequestBody(
          page: 1,
          pageSize: 10,
          productId: productId,
        ),
        productId: productId,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
