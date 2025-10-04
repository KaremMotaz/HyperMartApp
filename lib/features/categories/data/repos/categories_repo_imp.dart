import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hyper_mart_app/core/errors/error_handler.dart';
import 'package:hyper_mart_app/core/errors/failure.dart';
import 'package:hyper_mart_app/features/categories/data/models/add_category_response.dart';
import 'package:hyper_mart_app/features/categories/data/service/categories_datasource.dart';
import 'package:hyper_mart_app/features/categories/data/repos/categories_repo.dart';
import 'package:hyper_mart_app/features/categories/data/models/add_categories_request.dart';
import 'package:hyper_mart_app/features/categories/data/models/get_categories_model.dart';
import 'package:hyper_mart_app/features/categories/data/models/get_category_by_id_model.dart';
import 'package:hyper_mart_app/features/categories/data/models/update_category_request.dart';
import 'package:hyper_mart_app/features/categories/data/models/update_category_response.dart';

class CategoriesRepoImp extends CategoriesRepo {
  final CategoriesDatasource categoriesDatasource;

  CategoriesRepoImp({required this.categoriesDatasource});
  @override
  Future<Either<Failure, GetCategoriesModel>> getCategories() async {
    try {
      final GetCategoriesModel response = await categoriesDatasource
          .getCategories();
      return right(response);
    } on DioException catch (e) {
      return left(ErrorHandler.handleDioError(e: e));
    }
  }

  @override
  Future<Either<Failure, AddCategoryResponse>> addCategory({
    required AddCategoryRequest body,
  }) async {
    try {
      final AddCategoryResponse response = await categoriesDatasource
          .addCategory(body: body);
      return right(response);
    } on DioException catch (e) {
      return left(ErrorHandler.handleDioError(e: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteCategory({required String id}) async {
    try {
      await categoriesDatasource.deleteCategory(id: id);
      return right(unit);
    } on DioException catch (e) {
      return left(ErrorHandler.handleDioError(e: e));
    }
  }

  @override
  Future<Either<Failure, GetCategoryByIdModel>> getCategoryById({
    required String id,
  }) async {
    try {
      final GetCategoryByIdModel response = await categoriesDatasource
          .getCategoryById(id: id);
      return right(response);
    } on DioException catch (e) {
      return left(ErrorHandler.handleDioError(e: e));
    }
  }

  @override
  Future<Either<Failure, UpdateCategoryResponse>> updateCategory({
    required String id,
    required UpdateCategoryRequest body,
  }) async {
    try {
      final UpdateCategoryResponse response = await categoriesDatasource
          .updateCategory(id: id, body: body);
      return right(response);
    } on DioException catch (e) {
      return left(ErrorHandler.handleDioError(e: e));
    }
  }
}
