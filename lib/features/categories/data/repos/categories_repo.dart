import 'package:dartz/dartz.dart';
import 'package:hyper_mart_app/core/errors/failure.dart';
import 'package:hyper_mart_app/features/categories/data/models/add_categories_request.dart';
import 'package:hyper_mart_app/features/categories/data/models/add_category_response.dart';
import 'package:hyper_mart_app/features/categories/data/models/get_categories_model.dart';
import 'package:hyper_mart_app/features/categories/data/models/get_category_by_id_model.dart';
import 'package:hyper_mart_app/features/categories/data/models/update_category_request.dart';
import 'package:hyper_mart_app/features/categories/data/models/update_category_response.dart';

abstract class CategoriesRepo {
  Future<Either<Failure, GetCategoriesModel>> getCategories();
  Future<Either<Failure, AddCategoryResponse>> addCategory({required AddCategoryRequest body});
  Future<Either<Failure, Unit>> deleteCategory({required String id});
  Future<Either<Failure, GetCategoryByIdModel>> getCategoryById({
    required String id,
  });
  Future<Either<Failure, UpdateCategoryResponse>> updateCategory({
    required String id,
    required UpdateCategoryRequest body,
  });
}
