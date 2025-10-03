import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hyper_mart_app/core/errors/error_handler.dart';
import 'package:hyper_mart_app/core/errors/failure.dart';
import 'package:hyper_mart_app/features/categories/data/categories_datasource.dart';
import 'package:hyper_mart_app/features/categories/data/categories_repo.dart';
import 'package:hyper_mart_app/features/categories/data/models/categories_response.dart';

class CategoriesRepoImp extends CategoriesRepo {
  final CategoriesDatasource categoriesDatasource;

  CategoriesRepoImp({required this.categoriesDatasource});
  @override
  Future<Either<Failure, CategoriesResponse>> getCategories() async {
    try {
      final CategoriesResponse response = await categoriesDatasource
          .getCategories();
      return right(response);
    } on DioException catch (e) {
      return left(ErrorHandler.handleDioError(e: e));
    }
  }
}
