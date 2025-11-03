part of 'cart_items_cubit.dart';

@freezed
class CartItemsState with _$CartItemsState {
  const factory CartItemsState.initial() = _Initial;

  // Get Cart Items
  const factory CartItemsState.getCartItemsLoading() = GetCartItemsLoading;
  const factory CartItemsState.getCartItemsSuccess({
    required GetCartItemsResponse cartResponse,
  }) = GetCartItemsSuccess;
  const factory CartItemsState.getCartItemsFailure({
    required ApiErrorModel apiErrorModel,
  }) = GetCartItemsFailure;

  // Add Cart Item
  const factory CartItemsState.addCartItemLoading() = _AddCartItemLoading;
  const factory CartItemsState.addCartItemSuccess({
    required AddCartItemResponse response,
  }) = _AddCartItemSuccess;
  const factory CartItemsState.addCartItemFailure({
    required ApiErrorModel apiErrorModel,
  }) = _AddCartItemFailure;

  // Decrement Cart Item
  const factory CartItemsState.decrementCartItemLoading() =
      _DecrementCartItemLoading;
  const factory CartItemsState.decrementCartItemSuccess({
    required DecrementCartItemResponse response,
  }) = _DecrementCartItemSuccess;
  const factory CartItemsState.decrementCartItemFailure({
    required ApiErrorModel apiErrorModel,
  }) = _DecrementCartItemFailure;

  // Delete Cart Item
  const factory CartItemsState.deleteCartItemLoading() =
      _DeleteCartItemLoading;
  const factory CartItemsState.deleteCartItemSuccess() =
      _DeleteCartItemSuccess;
  const factory CartItemsState.deleteCartItemFailure({
    required ApiErrorModel apiErrorModel,
  }) = _DeleteCartItemFailure;

  // Update Cart Item
  const factory CartItemsState.updateCartItemLoading() =
      _UpdateCartItemLoading;
  const factory CartItemsState.updateCartItemSuccess({
    required UpdateCartItemResponse response,
  }) = _UpdateCartItemSuccess;
  const factory CartItemsState.updateCartItemFailure({
    required ApiErrorModel apiErrorModel,
  }) = _UpdateCartItemFailure;

  // Apply Coupon
  const factory CartItemsState.applyCouponLoading() = _ApplyCouponLoading;
  const factory CartItemsState.applyCouponSuccess({
    required ApplyCouponResponse response,
  }) = _ApplyCouponSuccess;
  const factory CartItemsState.applyCouponFailure({
    required ApiErrorModel apiErrorModel,
  }) = _ApplyCouponFailure;
}

