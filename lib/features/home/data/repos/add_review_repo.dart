import 'package:hyper_mart_app/features/home/data/models/Reviews/add_review_request_body.dart';
import 'package:hyper_mart_app/features/home/data/models/Reviews/add_review_response.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../services/home_service.dart';

class AddReviewRepo {
  final HomeService homeService;

  AddReviewRepo({required this.homeService});

  Future<ApiResult<AddReviewResponse>> addReview({
    required AddReviewRequestBody addReviewRequestBody,
  }) async {
    try {
      final AddReviewResponse response = await homeService.addReview(
        body: addReviewRequestBody,
        productId: addReviewRequestBody.productId,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
