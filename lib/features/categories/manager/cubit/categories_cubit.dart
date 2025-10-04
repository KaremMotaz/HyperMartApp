import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/core/errors/failure.dart';
import 'package:hyper_mart_app/features/categories/data/categories_repo.dart';
import 'package:hyper_mart_app/features/categories/data/models/add_categories_model.dart';
import 'package:hyper_mart_app/features/categories/data/models/get_categories_model.dart';
part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit({required this.categoriesRepo})
    : super(CategoriesInitialState());

  final CategoriesRepo categoriesRepo;

  Future<void> getCategories() async {
    emit(CategoriesLoadingState());
    final Either<Failure, GetCategoriesModel> result = await categoriesRepo
        .getCategories();

    result.fold(
      (failure) {
        emit(
          CategoriesFailureState(
            message: failure.message,
            details: failure.details,
          ),
        );
      },
      (categoriesResponse) {
        emit(GetCategoriesSuccessState(categoriesResponse: categoriesResponse));
      },
    );
  }

  Future<void> addCategory({required AddCategoryModel body}) async {
    emit(CategoriesLoadingState());

    final Either<Failure, Unit> result = await categoriesRepo.addCategory(
      body: body,
    );

    result.fold(
      (failure) {
        emit(
          CategoriesFailureState(
            message: failure.message,
            details: failure.details,
          ),
        );
      },
      (categoriesResponse) {
        emit(AddCategorySuccessState());
      },
    );
  }

  Future<void> deleteCategory({required String id}) async {
    emit(DeleteCategoriesLoadingState());

    final Either<Failure, Unit> result = await categoriesRepo.deleteCategory(
      id: id,
    );

    result.fold(
      (failure) {
        emit(
          CategoriesFailureState(
            message: failure.message,
            details: failure.details,
          ),
        );
      },
      (categoriesResponse) {
        emit(DeleteCategorySuccessState());
      },
    );
  }
}
