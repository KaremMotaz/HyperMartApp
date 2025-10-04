import 'package:dartz/dartz.dart';
import 'package:hyper_mart_app/core/errors/failure.dart';
import 'package:hyper_mart_app/features/categories/data/models/add_categories_model.dart';
import 'package:hyper_mart_app/features/categories/data/models/get_categories_model.dart';

abstract class CategoriesRepo {
  Future<Either<Failure, GetCategoriesModel>> getCategories();
  Future<Either<Failure, Unit>> addCategory({required AddCategoryModel body});
  Future<Either<Failure, Unit>> deleteCategory({required String id});
}
