part of 'categories_cubit.dart';

sealed class CategoriesState extends Equatable {
  const CategoriesState();

  @override
  List<Object> get props => [];
}

final class CategoriesInitialState extends CategoriesState {}

final class CategoriesLoadingState extends CategoriesState {}

final class DeleteCategoriesLoadingState extends CategoriesState {}

final class GetCategoriesSuccessState extends CategoriesState {
  final GetCategoriesModel categoriesResponse;
  const GetCategoriesSuccessState({required this.categoriesResponse});
  @override
  List<Object> get props => [categoriesResponse];
}

final class AddCategorySuccessState extends CategoriesState {}

final class DeleteCategorySuccessState extends CategoriesState {}

final class CategoriesFailureState extends CategoriesState {
  final String message;
  final List<String> details;

  const CategoriesFailureState({required this.message, required this.details});
  @override
  List<Object> get props => [message, details];
}
