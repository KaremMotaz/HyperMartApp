part of 'categories_cubit.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.categoriesInitial() = _CategoriesInitial;
  const factory CategoriesState.categoriesLoading() = CategoriesLoading;
  const factory CategoriesState.categoriesDeleteLoading() =
      DeleteCategoriesLoading;
  const factory CategoriesState.categoriesUpdateLoading() =
      UpdateCategoryLoading;
  const factory CategoriesState.categoriesGetByIdLoading() =
      GetCategoryByIdLoading;
  const factory CategoriesState.categoriesAddLoading() = AddCategoryLoading;

  const factory CategoriesState.categoriesGetSuccess({
    required GetCategoriesResponse categoriesResponse,
  }) = GetCategoriesSuccess;

  const factory CategoriesState.categoriesGetByIdSuccess({
    required GetCategoryByIdResponse getCategoryByIdModel,
  }) = GetCategoryByIdSuccessState;

  const factory CategoriesState.categoriesUpdateSuccess({
    required UpdateCategoryResponse updateCategoryResponse,
  }) = UpdateCategorySuccess;

  const factory CategoriesState.categoriesAddSuccess({
    required AddCategoryResponse addCategoryResponse,
  }) = AddCategorySuccess;

  const factory CategoriesState.categoriesDeleteSuccess() =
      DeleteCategorySuccess;

  const factory CategoriesState.categoriesFailure({
    required ApiErrorModel apiErrorModel,
  }) = CategoriesFailure;
}
