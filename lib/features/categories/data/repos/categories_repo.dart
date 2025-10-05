import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/networking/api_service.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/errors/failure.dart';
import '../models/add_category_response.dart';
import '../models/add_categories_request.dart';
import '../models/get_categories_model.dart';
import '../models/get_category_by_id_model.dart';
import '../models/update_category_request.dart';
import '../models/update_category_response.dart';

class CategoriesRepo {
  final ApiService apiService;

  CategoriesRepo({required this.apiService});

  Future<Either<Failure, GetCategoriesModel>> getCategories() async {
    try {
      final GetCategoriesModel response = await apiService.getCategories();
      return right(response);
    } on DioException catch (e) {
      return left(ApiErrorHandler.handleDioError(e: e));
    }
  }

  Future<Either<Failure, AddCategoryResponse>> addCategory({
    required AddCategoryRequest body,
  }) async {
    try {
      final AddCategoryResponse response = await apiService.addCategory(
        body: body,
      );
      return right(response);
    } on DioException catch (e) {
      return left(ApiErrorHandler.handleDioError(e: e));
    }
  }

  Future<Either<Failure, Unit>> deleteCategory({required String id}) async {
    try {
      await apiService.deleteCategory(id: id);
      return right(unit);
    } on DioException catch (e) {
      return left(ApiErrorHandler.handleDioError(e: e));
    }
  }

  Future<Either<Failure, GetCategoryByIdModel>> getCategoryById({
    required String id,
  }) async {
    try {
      final GetCategoryByIdModel response = await apiService.getCategoryById(
        id: id,
      );
      return right(response);
    } on DioException catch (e) {
      return left(ApiErrorHandler.handleDioError(e: e));
    }
  }

  Future<Either<Failure, UpdateCategoryResponse>> updateCategory({
    required String id,
    required UpdateCategoryRequest body,
  }) async {
    try {
      final UpdateCategoryResponse response = await apiService.updateCategory(
        id: id,
        body: body,
      );
      return right(response);
    } on DioException catch (e) {
      return left(ApiErrorHandler.handleDioError(e: e));
    }
  }
}
