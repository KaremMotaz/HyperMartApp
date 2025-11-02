part of 'products_cubit.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.getProductsLoading() = GetProductsLoading;

  const factory ProductsState.getProductsSuccess({
    required GetProductsResponse getProductsResponse,
  }) = GetProductsSuccess;

  const factory ProductsState.getProductsFailure({
    required ApiErrorModel apiErrorModel,
  }) = GetProductsFailure;
}
