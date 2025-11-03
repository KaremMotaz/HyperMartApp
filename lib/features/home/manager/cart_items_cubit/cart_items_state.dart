part of 'cart_items_cubit.dart';

@freezed
class CartItemsState with _$CartItemsState {
  const factory CartItemsState.getCartItemsLoading() = GetCartItemsLoading;

  const factory CartItemsState.getCartItemsSuccess({
    required GetCartItemsResponse getProductsResponse,
  }) = GetCartItemsSuccess;

  const factory CartItemsState.getCartItemsFailure({
    required ApiErrorModel apiErrorModel,
  }) = GetCartItemsFailure;
}
