import '../../../../core/helpers/constants.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/services/cache_helper.dart';
import '../models/categories/add_categories_request.dart';
import '../models/categories/add_category_response.dart';
import '../models/categories/get_categories_response.dart';
import '../models/categories/get_category_by_id_response.dart';
import '../models/categories/update_category_request.dart';
import '../models/categories/update_category_response.dart';
import '../local_data_source/categories_local_data_source.dart';
import '../services/home_service.dart';

class GetCategoriesRepo {
  final HomeService homeService;
  final CategoriesLocalDataSource categoriesLocalDataSource;

  GetCategoriesRepo({
    required this.homeService,
    required this.categoriesLocalDataSource,
  });

  Future<ApiResult<GetCategoriesResponse>> getCategories() async {
    try {
      final lastFetch = CacheHelper.getString(key: kLastFetchCategories);
      final now = DateTime.now();

      if (lastFetch != null) {
        final lastFetchTime = DateTime.parse(lastFetch);
        final difference = now.difference(lastFetchTime).inHours;

        // Clear cache if it's been more than 24 hours
        if (difference >= 24) {
          await categoriesLocalDataSource.clearAllCategories();
        }
      }

      // Try to get data from cache first
      final GetCategoriesResponse? cached = await categoriesLocalDataSource
          .getAllCategories();

      if (cached != null && cached.categories.isNotEmpty) {
        return ApiResult.success(cached);
      }

      //  No data in cache, fetch from remote
      final GetCategoriesResponse response = await homeService.getCategories();

      // Cache the data
      await categoriesLocalDataSource.cacheAllCategories(data: response);

      // Update last fetch
      await CacheHelper.set(
        key: kLastFetchCategories,
        value: now.toIso8601String(),
      );

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<AddCategoryResponse>> addCategory({
    required AddCategoryRequestBody body,
  }) async {
    try {
      final AddCategoryResponse response = await homeService.addCategory(
        body: body,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<void>> deleteCategory({required String id}) async {
    try {
      await homeService.deleteCategory(id: id);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<GetCategoryByIdResponse>> getCategoryById({
    required String id,
  }) async {
    try {
      final GetCategoryByIdResponse response = await homeService
          .getCategoryById(id: id);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<UpdateCategoryResponse>> updateCategory({
    required String id,
    required UpdateCategoryRequestBody body,
  }) async {
    try {
      final UpdateCategoryResponse response = await homeService.updateCategory(
        id: id,
        body: body,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
