part of 'cart_cubit.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _Initial;

  // Get Cart Items
  const factory CartState.getCartItemsLoading() = GetCartItemsLoading;
  const factory CartState.getCartItemsSuccess({
    required GetCartItemsResponse cartResponse,
  }) = GetCartItemsSuccess;
  const factory CartState.getCartItemsFailure({
    required ApiErrorModel apiErrorModel,
  }) = GetCartItemsFailure;

  // Add Cart Item
  const factory CartState.addCartItemLoading() = _AddCartItemLoading;
  const factory CartState.addCartItemSuccess({
    required AddCartItemResponse response,
  }) = _AddCartItemSuccess;
  const factory CartState.addCartItemFailure({
    required ApiErrorModel apiErrorModel,
  }) = _AddCartItemFailure;

  // Decrement Cart Item
  const factory CartState.decrementCartItemLoading() =
      _DecrementCartItemLoading;
  const factory CartState.decrementCartItemSuccess({
    required DecrementCartItemResponse response,
  }) = _DecrementCartItemSuccess;
  const factory CartState.decrementCartItemFailure({
    required ApiErrorModel apiErrorModel,
  }) = _DecrementCartItemFailure;

  // Delete Cart Item
  const factory CartState.deleteCartItemLoading() = _DeleteCartItemLoading;
  const factory CartState.deleteCartItemSuccess() = _DeleteCartItemSuccess;
  const factory CartState.deleteCartItemFailure({
    required ApiErrorModel apiErrorModel,
  }) = _DeleteCartItemFailure;

  // Update Cart Item
  const factory CartState.updateCartItemLoading() = _UpdateCartItemLoading;
  const factory CartState.updateCartItemSuccess({
    required UpdateCartItemResponse response,
  }) = _UpdateCartItemSuccess;
  const factory CartState.updateCartItemFailure({
    required ApiErrorModel apiErrorModel,
  }) = _UpdateCartItemFailure;

  // Apply Coupon
  const factory CartState.applyCouponLoading() = _ApplyCouponLoading;
  const factory CartState.applyCouponSuccess({
    required ApplyCouponResponse response,
  }) = _ApplyCouponSuccess;
  const factory CartState.applyCouponFailure({
    required ApiErrorModel apiErrorModel,
  }) = _ApplyCouponFailure;
}
