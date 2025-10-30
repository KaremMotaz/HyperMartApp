import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../models/add_categories_request.dart';
import '../models/add_category_response.dart';
import '../models/get_categories_response.dart';
import '../models/get_category_by_id_response.dart';
import '../models/update_category_request.dart';
import '../models/update_category_response.dart';

class CategoriesRepo {
  final ApiService apiService;

  CategoriesRepo({required this.apiService});

  Future<ApiResult<GetCategoriesResponse>> getCategories() async {
    try {
      final GetCategoriesResponse response = await apiService.getCategories();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<AddCategoryResponse>> addCategory({
    required AddCategoryRequest body,
  }) async {
    try {
      final AddCategoryResponse response = await apiService.addCategory(
        body: body,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<void>> deleteCategory({required String id}) async {
    try {
      await apiService.deleteCategory(id: id);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<GetCategoryByIdResponse>> getCategoryById({
    required String id,
  }) async {
    try {
      final GetCategoryByIdResponse response = await apiService.getCategoryById(
        id: id,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }

  Future<ApiResult<UpdateCategoryResponse>> updateCategory({
    required String id,
    required UpdateCategoryRequest body,
  }) async {
    try {
      final UpdateCategoryResponse response = await apiService.updateCategory(
        id: id,
        body: body,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error: error));
    }
  }
}
