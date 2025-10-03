part of 'categories_cubit.dart';

sealed class CategoriesState extends Equatable {
  const CategoriesState();

  @override
  List<Object> get props => [];
}
final class CategoriesLoadingState extends CategoriesState {}

final class CategoriesSuccessState extends CategoriesState {
  final CategoriesResponse categoriesResponse;
  const CategoriesSuccessState({required this.categoriesResponse});
  @override
  List<Object> get props => [categoriesResponse];
}

final class CategoriesFailureState extends CategoriesState {
  final String message;
  final List<String> details;

  const CategoriesFailureState({required this.message, required this.details});
  @override
  List<Object> get props => [message, details];
}
