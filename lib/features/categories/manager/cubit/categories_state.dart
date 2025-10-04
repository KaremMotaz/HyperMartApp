part of 'categories_cubit.dart';

sealed class CategoriesState extends Equatable {
  const CategoriesState();

  @override
  List<Object> get props => [];
}

final class CategoriesInitialState extends CategoriesState {}

final class CategoriesLoadingState extends CategoriesState {}

final class DeleteCategoriesLoadingState extends CategoriesState {}

final class UpdateCategoryLoadingState extends CategoriesState {}

final class GetCategoryByIdLoadingState extends CategoriesState {}

final class GetCategoriesSuccessState extends CategoriesState {
  final GetCategoriesModel categoriesResponse;
  const GetCategoriesSuccessState({required this.categoriesResponse});
  @override
  List<Object> get props => [categoriesResponse];
}

final class GetCategoryByIdSuccessState extends CategoriesState {
  final GetCategoryByIdModel getCategoryByIdModel;
  const GetCategoryByIdSuccessState({required this.getCategoryByIdModel});
  @override
  List<Object> get props => [getCategoryByIdModel];
}

final class UpdateCategorySuccessState extends CategoriesState {
  final UpdateCategoryResponse updateCategoryResponse;
  const UpdateCategorySuccessState({required this.updateCategoryResponse});
  @override
  List<Object> get props => [updateCategoryResponse];
}

final class AddCategorySuccessState extends CategoriesState {
  final AddCategoryResponse addCategoryResponse;
  const AddCategorySuccessState({required this.addCategoryResponse});
  @override
  List<Object> get props => [addCategoryResponse];
}

final class DeleteCategorySuccessState extends CategoriesState {}

final class CategoriesFailureState extends CategoriesState {
  final String message;
  final List<String> details;

  const CategoriesFailureState({required this.message, required this.details});
  @override
  List<Object> get props => [message, details];
}
