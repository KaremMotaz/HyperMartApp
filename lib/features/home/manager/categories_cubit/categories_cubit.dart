import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../data/models/categories/add_categories_request.dart';
import '../../data/models/categories/add_category_response.dart';
import '../../data/models/categories/get_categories_response.dart';
import '../../data/models/categories/get_category_by_id_response.dart';
import '../../data/models/categories/update_category_request.dart';
import '../../data/models/categories/update_category_response.dart';
import '../../data/repo/categories_repo.dart';

part 'categories_cubit.freezed.dart';
part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit({required this.categoriesRepo})
    : super(const CategoriesState.categoriesInitial());

  final CategoriesRepo categoriesRepo;

  Future<void> getCategories() async {
    emit(const CategoriesState.categoriesLoading());
    final ApiResult<GetCategoriesResponse> result = await categoriesRepo
        .getCategories();

    result.when(
      success: (categoriesResponse) {
        emit(
          CategoriesState.categoriesGetSuccess(
            categoriesResponse: categoriesResponse,
          ),
        );
      },
      failure: (apiErrorModel) {
        emit(CategoriesState.categoriesFailure(apiErrorModel: apiErrorModel));
      },
    );
  }

  Future<void> addCategory({required AddCategoryRequest body}) async {
    emit(const CategoriesState.categoriesAddLoading());

    final ApiResult<AddCategoryResponse> result = await categoriesRepo
        .addCategory(body: body);

    result.when(
      success: (addCategoryResponse) {
        emit(
          CategoriesState.categoriesAddSuccess(
            addCategoryResponse: addCategoryResponse,
          ),
        );
      },
      failure: (apiErrorModel) {
        emit(CategoriesState.categoriesFailure(apiErrorModel: apiErrorModel));
      },
    );
  }

  Future<void> deleteCategory({required String id}) async {
    emit(const CategoriesState.categoriesDeleteLoading());

    final ApiResult result = await categoriesRepo.deleteCategory(id: id);

    result.when(
      success: (unit) {
        emit(const CategoriesState.categoriesDeleteSuccess());
      },
      failure: (apiErrorModel) {
        emit(CategoriesState.categoriesFailure(apiErrorModel: apiErrorModel));
      },
    );
  }

  Future<void> getCategoryById({required String id}) async {
    emit(const CategoriesState.categoriesGetByIdLoading());

    final ApiResult<GetCategoryByIdResponse> result = await categoriesRepo
        .getCategoryById(id: id);

    result.when(
      success: (getCategoryByIdModel) {
        emit(
          GetCategoryByIdSuccessState(
            getCategoryByIdModel: getCategoryByIdModel,
          ),
        );
      },
      failure: (apiErrorModel) {
        emit(CategoriesState.categoriesFailure(apiErrorModel: apiErrorModel));
      },
    );
  }

  Future<void> updateCategory({
    required String id,
    required UpdateCategoryRequest body,
  }) async {
    emit(const CategoriesState.categoriesUpdateLoading());

    final ApiResult<UpdateCategoryResponse> result = await categoriesRepo
        .updateCategory(id: id, body: body);

    result.when(
      success: (updateCategoryResponse) {
        emit(
          CategoriesState.categoriesUpdateSuccess(
            updateCategoryResponse: updateCategoryResponse,
          ),
        );
      },
      failure: (apiErrorModel) {
        emit(CategoriesState.categoriesFailure(apiErrorModel: apiErrorModel));
      },
    );
  }
}
