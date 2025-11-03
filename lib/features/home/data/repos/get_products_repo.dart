import 'package:hyper_mart_app/features/home/data/local_data_source/products_local_data_source.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_request_body.dart';
import 'package:hyper_mart_app/features/home/data/models/Products/get_products_response.dart';
import '../../../../core/helpers/constants.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/services/cache_helper.dart';
import '../services/home_service.dart';

class GetProductsRepo {
  final HomeService homeService;
  final ProductsLocalDataSource productsLocalDataSource;

  GetProductsRepo({
    required this.homeService,
    required this.productsLocalDataSource,
  });

  Future<ApiResult<GetProductsResponse>> getProducts() async {
    try {
      final lastFetch = CacheHelper.getString(key: kLastFetchProducts);
      final now = DateTime.now();

      if (lastFetch != null) {
        final lastFetchTime = DateTime.parse(lastFetch);
        final difference = now.difference(lastFetchTime).inHours;

        // Clear cache if it's been more than 24 hours
        if (difference >= 24) {
          await productsLocalDataSource.clearAllProducts();
        }
      }

      // Try to get data from cache first
      final GetProductsResponse? cached = await productsLocalDataSource
          .getAllProducts();
      if (cached != null && cached.items.isNotEmpty) {
        return ApiResult.success(cached);
      }

      //  No data in cache, fetch from remote
      final GetProductsResponse response = await homeService.getProducts(
        body: GetProductsRequestBody(page: 1, pageSize: 10),
      );

      // Cache the data
      await productsLocalDataSource.cacheAllProducts(data: response);

      // Update last fetch
      await CacheHelper.set(
        key: kLastFetchProducts,
        value: now.toIso8601String(),
      );

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
