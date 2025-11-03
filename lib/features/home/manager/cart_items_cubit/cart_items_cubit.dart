import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyper_mart_app/core/networking/api_error_model.dart';
import 'package:hyper_mart_app/features/home/data/models/cart/add_cart_item_request_body.dart';
import 'package:hyper_mart_app/features/home/data/models/cart/add_cart_item_response.dart';
import 'package:hyper_mart_app/features/home/data/models/cart/get_cart_items_response.dart';
import 'package:hyper_mart_app/features/home/data/repos/add_cart_item_repo.dart';
import 'package:hyper_mart_app/features/home/data/repos/get_cart_items_repo.dart';
import '../../../../core/networking/api_result.dart';

part 'cart_items_cubit.freezed.dart';
part 'cart_items_state.dart';

class CartItemsCubit extends Cubit<CartItemsState> {
  CartItemsCubit({
    required this.getCartItemsRepo,
    required this.addCartItemRepo,
  }) : super(const CartItemsState.getCartItemsLoading());

  final GetCartItemsRepo getCartItemsRepo;
  final AddCartItemRepo addCartItemRepo;

  Future<void> getCartItems() async {
    final ApiResult<GetCartItemsResponse> result = await getCartItemsRepo
        .getCartItems();

    result.when(
      success: (getCartItemsResponse) {
        emit(
          CartItemsState.getCartItemsSuccess(
            getProductsResponse: getCartItemsResponse,
          ),
        );
      },
      failure: (apiErrorModel) {
        emit(CartItemsState.getCartItemsFailure(apiErrorModel: apiErrorModel));
      },
    );
  }

  Future<void> addCartItem({required String productId}) async {
    final ApiResult<AddCartItemResponse> result = await addCartItemRepo
        .addCartItem(
          body: AddCartItemRequestBody(
            productId: productId,
            quantity: 1,
          ),
        );

    result.when(
      success: (addCartItemResponse) {
        emit(
          CartItemsState.addCartItemSuccess(
            getProductsResponse: addCartItemResponse,
          ),
        );
      },
      failure: (apiErrorModel) {
        emit(CartItemsState.addCartItemFailure(apiErrorModel: apiErrorModel));
      },
    );
  }
}
