import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../data/models/cart/add_cart_item_request_body.dart';
import '../../data/models/cart/add_cart_item_response.dart';
import '../../data/models/cart/apply_coupon_request_body.dart';
import '../../data/models/cart/apply_coupon_response.dart';
import '../../data/models/cart/decrement_cart_item_request_body.dart';
import '../../data/models/cart/decrement_cart_item_response.dart';
import '../../data/models/cart/delete_cart_item_request_body.dart';
import '../../data/models/cart/get_cart_items_response.dart';
import '../../data/models/cart/update_cart_item_request_body.dart';
import '../../data/models/cart/update_cart_item_response.dart';
import '../../data/repos/add_cart_item_repo.dart';
import '../../data/repos/apply_coupon_repo.dart';
import '../../data/repos/decrement_cart_item_repo.dart';
import '../../data/repos/delete_cart_item_repo.dart';
import '../../data/repos/get_cart_items_repo.dart';
import '../../data/repos/update_cart_item_repo.dart';
import '../../../../core/networking/api_result.dart';

part 'cart_cubit.freezed.dart';
part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit({
    required this.getCartItemsRepo,
    required this.addCartItemRepo,
    required this.decrementCartItemRepo,
    required this.deleteCartItemRepo,
    required this.updateCartItemRepo,
    required this.applyCouponRepo,
  }) : super(const CartState.initial());

  final GetCartItemsRepo getCartItemsRepo;
  final AddCartItemRepo addCartItemRepo;
  final DecrementCartItemRepo decrementCartItemRepo;
  final DeleteCartItemRepo deleteCartItemRepo;
  final UpdateCartItemRepo updateCartItemRepo;
  final ApplyCouponRepo applyCouponRepo;

  Future<void> getCartItems() async {
    emit(const CartState.getCartItemsLoading());
    final ApiResult<GetCartItemsResponse> result = await getCartItemsRepo
        .getCartItems();

    result.when(
      success: (getCartItemsResponse) {
        emit(CartState.getCartItemsSuccess(cartResponse: getCartItemsResponse));
      },
      failure: (apiErrorModel) {
        emit(CartState.getCartItemsFailure(apiErrorModel: apiErrorModel));
      },
    );
  }

  Future<void> addCartItem({required String productId}) async {
    emit(const CartState.addCartItemLoading());

    final ApiResult<AddCartItemResponse> result = await addCartItemRepo
        .addCartItem(
          body: AddCartItemRequestBody(productId: productId, quantity: 1),
        );

    result.when(
      success: (addCartItemResponse) {
        emit(CartState.addCartItemSuccess(response: addCartItemResponse));
      },
      failure: (apiErrorModel) {
        emit(CartState.addCartItemFailure(apiErrorModel: apiErrorModel));
      },
    );
  }

  Future<void> decrementCartItem({required String productId}) async {
    emit(const CartState.decrementCartItemLoading());

    final ApiResult<DecrementCartItemResponse> result =
        await decrementCartItemRepo.decrementCartItem(
          body: DecrementCartItemRequestBody(itemId: productId, quantity: 1),
        );

    result.when(
      success: (decrementCartItemResponse) {
        emit(
          CartState.decrementCartItemSuccess(
            response: decrementCartItemResponse,
          ),
        );
      },
      failure: (apiErrorModel) {
        emit(CartState.decrementCartItemFailure(apiErrorModel: apiErrorModel));
      },
    );
  }

  Future<void> deleteCartItem({required String productId}) async {
    emit(const CartState.deleteCartItemLoading());

    final ApiResult<void> result = await deleteCartItemRepo.deleteCartItem(
      body: DeleteCartItemRequestBody(id: productId),
    );

    result.when(
      success: (addCartItemResponse) {
        emit(const CartState.deleteCartItemSuccess());
      },
      failure: (apiErrorModel) {
        emit(CartState.deleteCartItemFailure(apiErrorModel: apiErrorModel));
      },
    );
  }

  Future<void> updateCartItem({required String productId}) async {
    emit(const CartState.updateCartItemLoading());

    final ApiResult<UpdateCartItemResponse> result = await updateCartItemRepo
        .updateCartItem(
          body: UpdateCartItemRequestBody(id: productId, quantity: 1),
        );

    result.when(
      success: (updateCartItemResponse) {
        emit(CartState.updateCartItemSuccess(response: updateCartItemResponse));
      },
      failure: (apiErrorModel) {
        emit(CartState.updateCartItemFailure(apiErrorModel: apiErrorModel));
      },
    );
  }

  Future<void> applyCoupon() async {
    emit(const CartState.applyCouponLoading());

    final ApiResult<ApplyCouponResponse> result = await applyCouponRepo
        .applyCoupon(body: ApplyCouponRequestBody(couponCode: ""));

    result.when(
      success: (applyCouponResponse) {
        emit(CartState.applyCouponSuccess(response: applyCouponResponse));
      },
      failure: (apiErrorModel) {
        emit(CartState.applyCouponFailure(apiErrorModel: apiErrorModel));
      },
    );
  }
}
