import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyper_mart_app/core/networking/api_error_model.dart';
import 'package:hyper_mart_app/features/home/data/models/cart/add_cart_item_request_body.dart';
import 'package:hyper_mart_app/features/home/data/models/cart/add_cart_item_response.dart';
import 'package:hyper_mart_app/features/home/data/models/cart/apply_coupon_request_body.dart';
import 'package:hyper_mart_app/features/home/data/models/cart/apply_coupon_response.dart';
import 'package:hyper_mart_app/features/home/data/models/cart/decrement_cart_item_request_body.dart';
import 'package:hyper_mart_app/features/home/data/models/cart/decrement_cart_item_response.dart';
import 'package:hyper_mart_app/features/home/data/models/cart/delete_cart_item_request_body.dart';
import 'package:hyper_mart_app/features/home/data/models/cart/get_cart_items_response.dart';
import 'package:hyper_mart_app/features/home/data/models/cart/update_cart_item_request_body.dart';
import 'package:hyper_mart_app/features/home/data/models/cart/update_cart_item_response.dart';
import 'package:hyper_mart_app/features/home/data/repos/add_cart_item_repo.dart';
import 'package:hyper_mart_app/features/home/data/repos/apply_coupon_repo.dart';
import 'package:hyper_mart_app/features/home/data/repos/decrement_cart_item_repo.dart';
import 'package:hyper_mart_app/features/home/data/repos/delete_cart_item_repo.dart';
import 'package:hyper_mart_app/features/home/data/repos/get_cart_items_repo.dart';
import 'package:hyper_mart_app/features/home/data/repos/update_cart_item_repo.dart';
import '../../../../core/networking/api_result.dart';

part 'cart_items_cubit.freezed.dart';
part 'cart_items_state.dart';

class CartItemsCubit extends Cubit<CartItemsState> {
  CartItemsCubit({
    required this.getCartItemsRepo,
    required this.addCartItemRepo,
    required this.decrementCartItemRepo,
    required this.deleteCartItemRepo,
    required this.updateCartItemRepo,
    required this.applyCouponRepo,
  }) : super(const CartItemsState.initial());

  final GetCartItemsRepo getCartItemsRepo;
  final AddCartItemRepo addCartItemRepo;
  final DecrementCartItemRepo decrementCartItemRepo;
  final DeleteCartItemRepo deleteCartItemRepo;
  final UpdateCartItemRepo updateCartItemRepo;
  final ApplyCouponRepo applyCouponRepo;

  Future<void> getCartItems() async {
    emit(const CartItemsState.getCartItemsLoading());
    final ApiResult<GetCartItemsResponse> result = await getCartItemsRepo
        .getCartItems();

    result.when(
      success: (getCartItemsResponse) {
        emit(
          CartItemsState.getCartItemsSuccess(
            cartResponse: getCartItemsResponse,
          ),
        );
      },
      failure: (apiErrorModel) {
        emit(CartItemsState.getCartItemsFailure(apiErrorModel: apiErrorModel));
      },
    );
  }

  Future<void> addCartItem({required String productId}) async {
    emit(const CartItemsState.addCartItemLoading());

    final ApiResult<AddCartItemResponse> result = await addCartItemRepo
        .addCartItem(
          body: AddCartItemRequestBody(productId: productId, quantity: 1),
        );

    result.when(
      success: (addCartItemResponse) {
        emit(CartItemsState.addCartItemSuccess(response: addCartItemResponse));
      },
      failure: (apiErrorModel) {
        emit(CartItemsState.addCartItemFailure(apiErrorModel: apiErrorModel));
      },
    );
  }

  Future<void> decrementCartItem({required String productId}) async {
    emit(const CartItemsState.decrementCartItemLoading());

    final ApiResult<DecrementCartItemResponse> result =
        await decrementCartItemRepo.decrementCartItem(
          body: DecrementCartItemRequestBody(itemId: productId, quantity: 1),
        );

    result.when(
      success: (decrementCartItemResponse) {
        emit(
          CartItemsState.decrementCartItemSuccess(
            response: decrementCartItemResponse,
          ),
        );
      },
      failure: (apiErrorModel) {
        emit(
          CartItemsState.decrementCartItemFailure(apiErrorModel: apiErrorModel),
        );
      },
    );
  }

  Future<void> deleteCartItem({required String productId}) async {
    emit(const CartItemsState.deleteCartItemLoading());

    final ApiResult<void> result = await deleteCartItemRepo.deleteCartItem(
      body: DeleteCartItemRequestBody(id: productId),
    );

    result.when(
      success: (addCartItemResponse) {
        emit(const CartItemsState.deleteCartItemSuccess());
      },
      failure: (apiErrorModel) {
        emit(
          CartItemsState.deleteCartItemFailure(apiErrorModel: apiErrorModel),
        );
      },
    );
  }

  Future<void> updateCartItem({required String productId}) async {
    emit(const CartItemsState.updateCartItemLoading());

    final ApiResult<UpdateCartItemResponse> result = await updateCartItemRepo
        .updateCartItem(
          body: UpdateCartItemRequestBody(id: productId, quantity: 1),
        );

    result.when(
      success: (updateCartItemResponse) {
        emit(
          CartItemsState.updateCartItemSuccess(
            response: updateCartItemResponse,
          ),
        );
      },
      failure: (apiErrorModel) {
        emit(
          CartItemsState.updateCartItemFailure(apiErrorModel: apiErrorModel),
        );
      },
    );
  }

  Future<void> applyCoupon() async {
    emit(const CartItemsState.applyCouponLoading());

    final ApiResult<ApplyCouponResponse> result = await applyCouponRepo
        .applyCoupon(body: ApplyCouponRequestBody(couponCode: ""));

    result.when(
      success: (applyCouponResponse) {
        emit(CartItemsState.applyCouponSuccess(response: applyCouponResponse));
      },
      failure: (apiErrorModel) {
        emit(CartItemsState.applyCouponFailure(apiErrorModel: apiErrorModel));
      },
    );
  }
}
