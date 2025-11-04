part of 'cart_cubit.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = Initial;

  // Get Cart Items
  const factory CartState.getCartItemsLoading() = GetCartItemsLoading;
  const factory CartState.getCartItemsSuccess({
    required GetCartItemsResponse cartResponse,
  }) = GetCartItemsSuccess;
  const factory CartState.getCartItemsFailure({
    required ApiErrorModel apiErrorModel,
  }) = GetCartItemsFailure;

  // Add Cart Item
  const factory CartState.addCartItemLoading() = AddCartItemLoading;
  const factory CartState.addCartItemSuccess({
    required AddCartItemResponse response,
  }) = AddCartItemSuccess;
  const factory CartState.addCartItemFailure({
    required ApiErrorModel apiErrorModel,
  }) = AddCartItemFailure;

  // Decrement Cart Item
  const factory CartState.decrementCartItemLoading() =
      DecrementCartItemLoading;
  const factory CartState.decrementCartItemSuccess({
    required DecrementCartItemResponse response,
  }) = DecrementCartItemSuccess;
  const factory CartState.decrementCartItemFailure({
    required ApiErrorModel apiErrorModel,
  }) = DecrementCartItemFailure;

  // Delete Cart Item
  const factory CartState.deleteCartItemLoading() = DeleteCartItemLoading;
  const factory CartState.deleteCartItemSuccess() = DeleteCartItemSuccess;
  const factory CartState.deleteCartItemFailure({
    required ApiErrorModel apiErrorModel,
  }) = DeleteCartItemFailure;

  // Update Cart Item
  const factory CartState.updateCartItemLoading() = UpdateCartItemLoading;
  const factory CartState.updateCartItemSuccess({
    required UpdateCartItemResponse response,
  }) = UpdateCartItemSuccess;
  const factory CartState.updateCartItemFailure({
    required ApiErrorModel apiErrorModel,
  }) = UpdateCartItemFailure;

  // Apply Coupon
  const factory CartState.applyCouponLoading() = ApplyCouponLoading;
  const factory CartState.applyCouponSuccess({
    required ApplyCouponResponse response,
  }) = ApplyCouponSuccess;
  const factory CartState.applyCouponFailure({
    required ApiErrorModel apiErrorModel,
  }) = ApplyCouponFailure;
}
