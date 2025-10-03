import 'package:dartz/dartz.dart';
import 'package:hyper_mart_app/core/errors/failure.dart';
import 'package:hyper_mart_app/features/categories/data/models/categories_response.dart';

abstract class CategoriesRepo {
  Future<Either<Failure, CategoriesResponse>> getCategories();
}
