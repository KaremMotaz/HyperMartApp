import '../models/cart/apply_coupon_request_body.dart';
import '../models/cart/apply_coupon_response.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../services/home_service.dart';

class ApplyCouponRepo {
  final HomeService homeService;

  ApplyCouponRepo({required this.homeService});

  Future<ApiResult<ApplyCouponResponse>> applyCoupon({
    required ApplyCouponRequestBody body,
  }) async {
    try {
      final ApplyCouponResponse response = await homeService.applyCoupon(
        body: body,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
