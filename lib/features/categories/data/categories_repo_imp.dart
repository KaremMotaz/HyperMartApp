import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hyper_mart_app/core/errors/error_handler.dart';
import 'package:hyper_mart_app/core/errors/failure.dart';
import 'package:hyper_mart_app/features/categories/data/categories_datasource.dart';
import 'package:hyper_mart_app/features/categories/data/categories_repo.dart';
import 'package:hyper_mart_app/features/categories/data/models/add_categories_model.dart';
import 'package:hyper_mart_app/features/categories/data/models/get_categories_model.dart';

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
  Future<Either<Failure, Unit>> addCategory({
    required AddCategoryModel body,
  }) async {
    try {
      await categoriesDatasource.addCategory(body: body);
      log('category added');
      return right(unit);
    } on DioException catch (e) {
      return left(ErrorHandler.handleDioError(e: e));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteCategory({required String id}) async {
    try {
      await categoriesDatasource.deleteCategory(id: id);
      log('category removed');
      return right(unit);
    } on DioException catch (e) {
      return left(ErrorHandler.handleDioError(e: e));
    }
  }
}
