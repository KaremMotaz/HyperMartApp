import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/errors/failure.dart';
import '../../data/models/add_category_response.dart';
import '../../data/models/get_category_by_id_model.dart';
import '../../data/models/update_category_request.dart';
import '../../data/models/update_category_response.dart';
import '../../data/repos/categories_repo.dart';
import '../../data/models/add_categories_request.dart';
import '../../data/models/get_categories_model.dart';
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

  Future<void> addCategory({required AddCategoryRequest body}) async {
    emit(CategoriesLoadingState());

    final Either<Failure, AddCategoryResponse> result = await categoriesRepo
        .addCategory(body: body);

    result.fold(
      (failure) {
        emit(
          CategoriesFailureState(
            message: failure.message,
            details: failure.details,
          ),
        );
      },
      (addCategoryResponse) {
        emit(AddCategorySuccessState(addCategoryResponse: addCategoryResponse));
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
      (unit) {
        emit(DeleteCategorySuccessState());
      },
    );
  }

  Future<void> getCategoryById({required String id}) async {
    emit(GetCategoryByIdLoadingState());

    final Either<Failure, GetCategoryByIdModel> result = await categoriesRepo
        .getCategoryById(id: id);

    result.fold(
      (failure) {
        emit(
          CategoriesFailureState(
            message: failure.message,
            details: failure.details,
          ),
        );
      },
      (getCategoryByIdModel) {
        emit(
          GetCategoryByIdSuccessState(
            getCategoryByIdModel: getCategoryByIdModel,
          ),
        );
      },
    );
  }

  Future<void> updateCategory({
    required String id,
    required UpdateCategoryRequest body,
  }) async {
    emit(UpdateCategoryLoadingState());

    final Either<Failure, UpdateCategoryResponse> result = await categoriesRepo
        .updateCategory(id: id, body: body);

    result.fold(
      (failure) {
        emit(
          CategoriesFailureState(
            message: failure.message,
            details: failure.details,
          ),
        );
      },
      (updateCategoryResponse) {
        emit(
          UpdateCategorySuccessState(
            updateCategoryResponse: updateCategoryResponse,
          ),
        );
      },
    );
  }
}
